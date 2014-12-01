.class public Lcom/samsung/android/airbutton/view/AirButtonListView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonListView.java"


# instance fields
.field private final FLICKERING_ANIMATION_MULTIPLY:F

.field private final FLICKERING_THRESHOLD:I

.field private final MOVE_DIRECTION_DECREASE:I

.field private final MOVE_DIRECTION_INCREASE:I

.field private final VELOCITY_TO_DISTANCE_MULTIPLY:I

.field protected mAdjustedTouchDownPosition:F

.field protected mCurrentMovedDistance:F

.field private mFlickAnimator:Landroid/animation/ObjectAnimator;

.field private mFlickListener:Landroid/animation/Animator$AnimatorListener;

.field mHandler:Landroid/os/Handler;

.field mHoverEnableRunnable:Ljava/lang/Runnable;

.field protected mIsCanMoving:Z

.field protected mMaxDisplayableShapeCnt:I

.field protected mMaxDistanceCanMove:F

.field protected mMaxDistanceForAllShapes:F

.field protected mMaxDistanceOnScreen:F

.field protected mMoveDirection:I

.field protected mTotalMovedDistance:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->MOVE_DIRECTION_DECREASE:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->MOVE_DIRECTION_INCREASE:I

    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    const/16 v2, 0xc8

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->VELOCITY_TO_DISTANCE_MULTIPLY:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->FLICKERING_THRESHOLD:I

    const/high16 v2, 0x3fc00000

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->FLICKERING_ANIMATION_MULTIPLY:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/airbutton/view/AirButtonListView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AirButtonListView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/samsung/android/airbutton/view/AirButtonListView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AirButtonListView$2;-><init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v2, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    iput v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean v5, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    :goto_2
    new-instance v2, Landroid/animation/ObjectAnimator;

    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    const-string/jumbo v3, "totalFlickDistance"

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto/16 :goto_0

    :pswitch_0
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    goto/16 :goto_1

    :pswitch_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    iput v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustAllViewPosition()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    goto :goto_0
.end method

.method private adjustAlpha()V
    .locals 9

    const/4 v8, 0x0

    const-wide v6, 0x3e7ad7f29abcaf48L

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float v1, v3, v4

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    :goto_0
    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v0, v4, v3

    cmpl-float v4, v0, v8

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    :cond_0
    const/high16 v4, 0x3f800000

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    const/high16 v0, 0x3f800000

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v4, v5, :cond_5

    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v0, v1, v4

    cmpl-float v4, v0, v8

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method private getTouchDownPosition()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTouchMovePosition(Landroid/view/MotionEvent;)F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getTouchUpPosition()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private handleMove(F)V
    .locals 6

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-eq v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    sub-float v2, p1, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    add-float v1, v2, v3

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    float-to-int v2, p1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v0, v2

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setStartViewIdx(I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAlpha()V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    neg-float v2, v2

    add-float v1, v2, v5

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    :goto_2
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    float-to-int v2, p1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    sub-float v1, v2, v5

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    goto :goto_2
.end method

.method private setTouchDownPosition(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    goto :goto_0
.end method

.method private startFlickering(FF)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_0
    move v2, p1

    :goto_0
    const/high16 v5, 0x43480000

    mul-float v1, v2, v5

    cmpl-float v5, v1, v8

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42480000

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_1
    move v3, v4

    :goto_1
    return v3

    :cond_2
    move v2, p2

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3fc00000

    mul-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v8, v6, v4

    aput v1, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method


# virtual methods
.method protected adjustAllViewPosition(II)V
    .locals 5

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v2, -0x1

    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    :goto_1
    if-gt v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int v0, v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected adjustMenuItemXPosition()V
    .locals 10

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    if-eq v6, v9, :cond_4

    const/4 v0, -0x1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v7

    mul-int v4, v6, v7

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v6

    add-int/lit8 v1, v1, 0x1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v6

    if-lt v1, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v8, v8, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800ce

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v6, v7

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    if-lt v4, v6, :cond_7

    move v2, v5

    :cond_5
    if-eq v2, v9, :cond_3

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    add-int/lit8 v1, v6, 0x1

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-le v1, v6, :cond_6

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v1, v6, -0x1

    :cond_6
    move v5, v2

    :goto_3
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v7, v3

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0xa

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected adjustViewDelta(I)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-string v0, "AirButtonListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustViewDelta: viewIdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v6, :cond_e

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    :cond_2
    :goto_1
    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->adjustViewDelta(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v4, v0, p1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v0, v2

    :goto_3
    aput v0, v1, p1

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    const/16 v1, 0xa

    aput v1, v0, p1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v4, v0, p1

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    if-ne v0, v7, :cond_c

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    :cond_f
    :goto_4
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v5, :cond_12

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v6, :cond_11

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v4, v0, p1

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v4, v0, p1

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    rsub-int/lit8 v1, v1, 0xa

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    if-ne v0, v7, :cond_16

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v5, :cond_15

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v5, :cond_17

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onFinishing()V

    :cond_0
    return-void
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    sget v7, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    if-ne v7, v13, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playCloseSound()V

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    :cond_2
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v7, v8, :cond_4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v3, v7, -0x1

    :goto_0
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    :goto_1
    if-gt v6, v3, :cond_7

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string/jumbo v8, "x"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v9, v11

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string/jumbo v8, "y"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    aput v10, v9, v11

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string v8, "alpha"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v11

    const/4 v10, 0x0

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    sget v7, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    if-ne v7, v14, :cond_5

    const-wide/16 v7, 0xa0

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_2
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-ne v6, v7, :cond_6

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v0, v7, v11

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int v3, v7, v8

    goto/16 :goto_0

    :cond_5
    const-wide/16 v7, 0x140

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_2

    :cond_6
    new-array v7, v14, [Landroid/animation/Animator;

    aput-object v4, v7, v11

    aput-object v5, v7, v12

    aput-object v0, v7, v13

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    sget v6, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    if-ne v6, v10, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playOpenSound()V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v5, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string/jumbo v7, "x"

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string/jumbo v7, "y"

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0x140

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    aput-object v0, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method protected generateAndPlayYPositionAdjustAnimation()V
    .locals 8

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    const-string/jumbo v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    mul-int/lit8 v2, v1, 0x28

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected initAllViewDelta()V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustMenuItemXPosition()V

    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v2, -0x1

    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    :goto_1
    if-gt v1, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int v0, v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustViewDelta(I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchDownPosition()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    goto :goto_0
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v3, v0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-double v5, v0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-double v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->getDistance(DDDD)D

    move-result-wide v0

    double-to-int v9, v0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonListView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    div-int/lit8 v0, v0, 0x2

    if-le v9, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->setTouchDownPosition(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchMovePosition(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->handleMove(F)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v2, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchUpPosition()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->startFlickering(FF)Z

    move-result v2

    if-ne v2, v6, :cond_2

    iput-boolean v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    return-void
.end method

.method protected setEndViewIdx()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setEndViewIdx()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    goto :goto_0
.end method

.method public setTotalFlickDistance(F)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    int-to-float v1, v1

    add-float v0, v1, p1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->handleMove(F)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    int-to-float v1, v1

    add-float v0, v1, p1

    goto :goto_1
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverEnterAnimation(I)V

    goto :goto_0
.end method

.method protected showHoverExitAnimation(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    goto :goto_0
.end method
