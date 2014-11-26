.class final Landroid/webkitsec/WebViewInputDispatcher;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewInputDispatcher$1;,
        Landroid/webkitsec/WebViewInputDispatcher$TouchStream;,
        Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;,
        Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;,
        Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;,
        Landroid/webkitsec/WebViewInputDispatcher$UiHandler;,
        Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;,
        Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEBUG:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final ENABLE_EVENT_BATCHING:Z = true

.field public static ENABLE_TOUCH_PERFORMANCE_PATCH:Z = false

.field public static final EVENT_TYPE_CLICK:I = 0x4

.field public static final EVENT_TYPE_DOUBLE_TAP:I = 0x5

.field public static final EVENT_TYPE_HIT_TEST:I = 0x6

.field public static final EVENT_TYPE_HOVER:I = 0x1

.field public static final EVENT_TYPE_LONG_PRESS:I = 0x3

.field public static final EVENT_TYPE_SCROLL:I = 0x2

.field public static final EVENT_TYPE_TOUCH:I = 0x0

.field public static final FLAG_PRIVATE:I = 0x1

.field public static final FLAG_WEBKIT_IN_PROGRESS:I = 0x2

.field public static final FLAG_WEBKIT_TIMEOUT:I = 0x4

.field public static final FLAG_WEBKIT_TRANSFORMED_EVENT:I = 0x8

.field private static final HITTEST_TIMEOUT:I = 0x20

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final MAX_DISPATCH_EVENT_POOL_SIZE:I = 0xa

.field private static final PRESSED_STATE_DURATION:I

.field static final PREVENT_DEFAULT_MAYBE_YES:I = 0x0

.field static final PREVENT_DEFAULT_NO:I = 0x2

.field static final PREVENT_DEFAULT_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WebViewInputDispatcher"

.field private static final TAP_TIMEOUT:I

.field private static final WEBKIT_TIMEOUT_MILLIS:J = 0xc8L


# instance fields
.field private mButtonActionMouse:Z

.field private mClickOnSelectHandleCenter:Z

.field private mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mIsDoubleTapCandidate:Z

.field private mIsTapCandidate:Z

.field private mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

.field private final mLock:Ljava/lang/Object;

.field private mPostClickScheduled:Z

.field private mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

.field private mPostHideTapHighlightScheduled:Z

.field mPostHitTestScheduled:Z

.field private mPostLastWebKitScale:F

.field private mPostLastWebKitXOffset:I

.field private mPostLastWebKitYOffset:I

.field private mPostLongPressScheduled:Z

.field private mPostSendTouchEventsToWebKit:Z

.field private mPostShowTapHighlightScheduled:Z

.field private final mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

.field mPreventDefault:I

.field private mPreventDefaultYes:Z

.field private mTouchInput:Z

.field private mTouchSlopSquared:F

.field private mUIShouldSkipEvent:Z

.field private final mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

.field private final mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

.field private mUiDispatchScheduled:Z

.field private final mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

.field private final mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

.field private final mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

.field private final mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

.field private mWebKitDispatchScheduled:Z

.field private final mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

.field private mWebKitTimeoutScheduled:Z

.field private mWebKitTimeoutTime:J

.field private final mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

.field private mWebkitShouldSkipEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-class v0, Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->$assertionsDisabled:Z

    sput-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v2

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    sput-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 4
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;
    .param p2    # Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkitsec/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    iput-object p2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkitsec/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebViewInputDispatcher;Z)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1    # Z

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebViewInputDispatcher;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkitsec/WebViewInputDispatcher;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkitsec/WebViewInputDispatcher;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkitsec/WebViewInputDispatcher;Z)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1    # Z

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkitsec/WebViewInputDispatcher;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->handleHitTestMsg(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkitsec/WebViewInputDispatcher;Z)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1    # Z

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .param p2    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v2}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->canZoomOutOrZoomIn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    :cond_0
    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget-wide v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchUiEvent: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 9
    .param p1    # Z

    const/4 v8, 0x1

    sget-boolean v4, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "WebViewInputDispatcher"

    const-string v5, "dispatchUiEvents Enter "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez p1, :cond_1

    iget-object v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-boolean v4, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "WebViewInputDispatcher"

    const-string v6, "dispatchUiEvents Finish "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v5

    return-void

    :cond_3
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    iget v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f800000

    iget v6, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->scale(F)V

    iget v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_5

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    :cond_5
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v2, :cond_6

    iget-object v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v4, v1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    sget-boolean v4, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_6

    const-string v4, "WebViewInputDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchUiEvents: dropped event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v1, v4, :cond_7

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    :cond_7
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v2, v3}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I

    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWebKitEvent: event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkitsec/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWebKitEvent: preventDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 14
    .param p1    # Z

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v8, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "WebViewInputDispatcher"

    const-string v9, "dispatchWebKitEvents Enter "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v9, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-nez v0, :cond_3

    iget-boolean v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez p1, :cond_1

    iget-object v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-boolean v6, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "WebViewInputDispatcher"

    const-string v7, "dispatchWebKitEvents Finish "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v8

    return-void

    :cond_3
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v9, v9

    iget v10, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->scale(F)V

    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    :cond_4
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v2, :cond_5

    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v9, v1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v9, :cond_5

    if-nez v1, :cond_5

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v9, :cond_5

    const-string v9, "WebViewInputDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchWebKitEvents: dropped event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_b

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v9, v3, -0x3

    iput v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v1, v9, :cond_e

    move v5, v6

    :goto_2
    if-eqz v0, :cond_6

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v6, :cond_6

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    :cond_6
    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_f

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    :cond_7
    :goto_3
    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v9, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v12, :cond_8

    iget-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefaultYes:Z

    if-nez v9, :cond_8

    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v9, :cond_8

    iget v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    if-nez v9, :cond_8

    if-eqz v4, :cond_13

    const/4 v9, 0x1

    iput v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    :goto_4
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    const/4 v9, 0x4

    if-ne v2, v9, :cond_a

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    :cond_a
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v13, :cond_d

    :cond_c
    iput-boolean v7, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefaultYes:Z

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-ne v8, v13, :cond_d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_d

    iput-boolean v7, p0, Landroid/webkitsec/WebViewInputDispatcher;->mButtonActionMouse:Z

    :cond_d
    invoke-direct {p0, v1, v2, v3}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v4

    goto :goto_1

    :cond_e
    move v5, v7

    goto :goto_2

    :cond_f
    :try_start_3
    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v9, :cond_10

    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v9, v9, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eq v9, v0, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_10
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    and-int/lit8 v9, v3, 0x1

    if-eqz v9, :cond_11

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_3

    :cond_11
    if-eqz v4, :cond_12

    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v9, :cond_7

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefaultYes:Z

    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "WebViewInputDispatcher"

    const-string v10, "dispatchWebKitEvents: set mPreventDefaultYes to true!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_12
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto/16 :goto_3

    :cond_13
    const/4 v9, 0x2

    iput v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->handleWebKitTimeout()V

    const-string v9, "WebViewInputDispatcher"

    const-string v10, "DoNotSend"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method private enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f800000

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewInputDispatcher;->batchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUiEventLocked: batched event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUiEventUnbatchedLocked: enqueued event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f800000

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    iput-boolean v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewInputDispatcher;->batchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueWebKitEventLocked: batched event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueWebKitEventUnbatchedLocked: enqueued event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    return-void
.end method

.method private handleHitTestMsg(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 4
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private handleWebKitTimeout()V
    .locals 5

    iget-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    sget-boolean v2, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "WebViewInputDispatcher"

    const-string v4, "handleWebKitTimeout: timeout occurred!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object v0, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    sget v4, Landroid/webkitsec/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private isMoveEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # F

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    iput-object p1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    iput p2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput p3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput p4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput p5, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput p6, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {v0, v2}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    goto :goto_0
.end method

.method private postClick()V
    .locals 10

    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    :cond_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mButtonActionMouse:Z

    if-eqz v0, :cond_3

    monitor-exit v9

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->showTapCandidateLocked()V

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->hideKeyboradIfUneditable()V

    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    if-nez v8, :cond_1

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    monitor-exit v9

    goto :goto_0

    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postShowTapHighlight(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    :goto_1
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 2
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleHitTestLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 5
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    const/4 v2, 0x7

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    const-string/jumbo v1, "scheduleUiDispatchLocked: send MSG_DISPATCH_UI_EVENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    :cond_1
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    const-string/jumbo v1, "scheduleWebKitDispatchLocked: send MSG_DISPATCH_WEBKIT_EVENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    const/4 v1, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :goto_0
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendClickNow()V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "WebViewInputDispatcher"

    const-string/jumbo v3, "sendClickNow(): enque EVENT_TYPE_CLICK now!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->showTapCandidateLocked()V

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->hideKeyboradIfUneditable()V

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private shouldSkipWebKit(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showTapCandidateLocked()V
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private storeLastClickEvent()V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    iput-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    :goto_0
    return-void

    :cond_1
    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0

    :cond_2
    iput-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    :goto_0
    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    :cond_3
    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v4, :cond_5

    :cond_4
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    iput-boolean v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_8

    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-nez v1, :cond_6

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->sendClickNow()V

    :cond_6
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleLongPressLocked()V

    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownY:F

    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    :cond_8
    if-ne v0, v4, :cond_b

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleClickLocked()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    const/4 v5, 0x2

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    iget-wide v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method public isTouchInputHere()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    return v0
.end method

.method public postPointerEvent(Landroid/view/MotionEvent;IIF)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # F

    const/4 v9, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v3, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "WebViewInputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postPointerEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v2, 0x0

    :goto_1
    iget-object v10, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    move-object v1, p1

    if-nez v2, :cond_4

    :try_start_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->storeLastClickEvent()V

    iget-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v3, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "WebViewInputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postPointerEvent: dropped event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    :cond_4
    :goto_2
    if-ne v1, p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    :cond_5
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Landroid/webkitsec/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v8}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v10

    move v0, v9

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickOnSelectHandleCenter(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    return-void
.end method

.method public setTouchInputCameHere(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    return-void
.end method

.method public setUIShouldSkipEvent(Z)V
    .locals 3
    .param p1    # Z

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDispatcher->UIShouldSkipEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebKitWantsTouchEvents(Z)V
    .locals 3
    .param p1    # Z

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webkitWantsTouchEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    :cond_1
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebkitShouldSkipEvent(Z)V
    .locals 3
    .param p1    # Z

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDispatcher->WebkitShouldSkipEven: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipWebkitForRemainingTouchStream()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method
