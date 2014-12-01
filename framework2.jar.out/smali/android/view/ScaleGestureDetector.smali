.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MODE_IN_PROGRESS:I = 0x1

.field private static final DOUBLE_TAP_MODE_NONE:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private AREA_RATE_THRESHOLD:F

.field private AREA_THRESHOLD:F

.field private mAreaRateCalculating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrLenBeforeSqrt:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mDoubleTapEvent:Landroid/view/MotionEvent;

.field private mDoubleTapMode:I

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevLenBeforeSqrt:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private final mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mTempLenBeforeSqrt:F

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F

.field private mUpdatePrevious:Z

.field private mUseTwoFingerSweep:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    const v2, 0x45bb8000

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    const/high16 v2, 0x3f800000

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    new-instance v2, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v2, p0}, Landroid/view/ScaleGestureDetector$SaveState;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v20, v0

    sub-long v20, v6, v20

    const-wide/16 v22, 0x80

    cmp-long v20, v20, v22

    if-ltz v20, :cond_7

    const/4 v3, 0x1

    :goto_0
    const/16 v19, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v5, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_8

    const/4 v10, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    add-int/lit8 v15, v11, 0x1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_b

    if-ge v9, v11, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v9}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v13

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v13, v0

    :cond_0
    add-float v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    :cond_4
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v20, v0

    sub-float v20, v13, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->signum(F)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_5

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    if-ge v9, v11, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v17

    :goto_5
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    const/4 v3, 0x0

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v13

    goto/16 :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    goto :goto_5

    :cond_b
    add-int v16, v16, v15

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_c
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v4, v19, v20

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    add-float v20, v20, v21

    add-float v20, v20, v4

    const/high16 v21, 0x40400000

    div-float v14, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    add-float v20, v20, v14

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    add-float v20, v20, v14

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    :cond_d
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    const/high16 v0, 0x7fc00000

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v2, v5

    if-lez v7, :cond_0

    sub-float v7, v2, v5

    :goto_0
    iget v10, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    add-float/2addr v7, v10

    iput v7, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v3, v6

    if-lez v7, :cond_1

    sub-float v7, v3, v6

    :goto_1
    iget v10, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    add-float/2addr v7, v10

    iput v7, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v10, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v9, v10

    iput v9, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    cmpg-float v7, v6, v3

    if-gez v7, :cond_2

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    :goto_3
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    iput v3, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return-void

    :cond_0
    sub-float v7, v5, v2

    goto :goto_0

    :cond_1
    sub-float v7, v6, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    if-eqz v0, :cond_8

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    :cond_4
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_5

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    :cond_5
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_6

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    :cond_6
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    :cond_7
    :goto_5
    add-float/2addr v2, v5

    add-float/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    int-to-float v7, v1

    div-float/2addr v2, v7

    int-to-float v7, v1

    div-float/2addr v3, v7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v10, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto/16 :goto_3
.end method

.method private inDoubleTapMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    return v0
.end method

.method public getAreaThreshold()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 6

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000

    mul-float v1, v3, v4

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    add-float/2addr v2, v1

    goto :goto_1

    :cond_5
    sub-float/2addr v2, v1

    goto :goto_1

    :cond_6
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    goto :goto_1
.end method

.method public getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v5, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    :cond_1
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    :cond_4
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    :cond_5
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    div-float v1, v5, v6

    :goto_1
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v5, :cond_a

    iget v5, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_9

    move v2, v3

    :goto_2
    if-eqz v2, :cond_2

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget-wide v5, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v5, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const-string v5, "ScaleGestureDetector"

    const-string v6, "TwScaleGestureDetector"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto :goto_0

    :cond_6
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v1, v5, v6

    goto :goto_1

    :cond_7
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float v1, v5, v6

    :goto_3
    goto :goto_1

    :cond_8
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v1, v5, v6

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v5, :cond_b

    iget v5, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_b

    move v2, v3

    goto :goto_2

    :cond_b
    move v2, v4

    goto :goto_2

    :cond_c
    if-ne v0, v7, :cond_2

    iget-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v4, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_0

    :cond_d
    if-ne v0, v7, :cond_e

    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    :goto_4
    iget-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v4, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_4
.end method

.method public setAreaRateThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0

    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public setUseTwoFingerSweep(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    return-void
.end method
