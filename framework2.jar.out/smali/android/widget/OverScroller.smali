.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static final THRESHOLD_RATIO_X:I = 0x30

.field private static final THRESHOLD_RATIO_Y:I = 0x50


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private final mFlywheel:Z

.field private mHapticFlingXFinished:Z

.field private mHapticFlingYFinished:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHapticView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsListViewClient:Z

.field private mLastHapticScrollX:I

.field private mLastHapticScrollY:I

.field private mMode:I

.field private mPixelThresholdX:I

.field protected mPixelThresholdY:I

.field private final mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v2, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    iput-boolean v2, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x30

    iput v0, p0, Landroid/widget/OverScroller;->mPixelThresholdX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x50

    iput v0, p0, Landroid/widget/OverScroller;->mPixelThresholdY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x5226

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 12

    const/16 v11, 0x5221

    const/16 v10, 0x521c

    const/16 v9, 0x5212

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v7, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v7

    sub-long v1, v4, v7

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v7, v0

    cmp-long v7, v1, v7

    if-gez v7, :cond_3

    long-to-float v7, v1

    int-to-float v8, v0

    div-float v3, v7, v8

    iget-object v7, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_2

    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    :goto_1
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    :goto_2
    iput-boolean v6, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    :cond_5
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    :cond_6
    :goto_3
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_7
    :goto_4
    iput-boolean v6, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    :cond_8
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_2

    :cond_a
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mPixelThresholdX:I

    if-le v7, v8, :cond_6

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    if-eqz v7, :cond_c

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v7, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iput-boolean v6, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_b
    :goto_5
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    goto :goto_3

    :cond_c
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5

    :cond_d
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_4

    :cond_e
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mPixelThresholdY:I

    if-le v7, v8, :cond_0

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v7, :cond_f

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-nez v7, :cond_f

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v7, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v7, :cond_f

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iput-boolean v6, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_f
    :goto_6
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    goto/16 :goto_0

    :cond_10
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v6

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v7

    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_2

    iput p2, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    :cond_2
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x5226

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public getCurrVelocity(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

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

.method public isScrollingInDirection(FF)Z
    .locals 4

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x4ea2

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x4ea2

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method public setHapticView(Landroid/view/View;Landroid/view/HapticPreDrawListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setIsListViewClient(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4

    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 8

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
