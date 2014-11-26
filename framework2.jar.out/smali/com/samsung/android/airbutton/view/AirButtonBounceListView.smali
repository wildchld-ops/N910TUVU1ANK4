.class public Lcom/samsung/android/airbutton/view/AirButtonBounceListView;
.super Lcom/samsung/android/airbutton/view/AirButtonListView;
.source "AirButtonBounceListView.java"


# instance fields
.field private final BOUNCE_DIRECTION_BACKWARD:I

.field private final BOUNCE_DIRECTION_FORWARD:I

.field private final BOUNCE_LOOP_CNT:I

.field private final BOUNCE_PLAY_TIME_MULTIPLY:I

.field private final BOUNCE_TILT_MULTIPLY:F

.field private final TOUCH_UP_BOUNCE_TILT_MULTIPLY:F

.field private mFirstAnimatorLiestener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3    # Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AirButtonListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->BOUNCE_DIRECTION_FORWARD:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->BOUNCE_DIRECTION_BACKWARD:I

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->BOUNCE_LOOP_CNT:I

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->BOUNCE_PLAY_TIME_MULTIPLY:I

    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->BOUNCE_TILT_MULTIPLY:F

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->TOUCH_UP_BOUNCE_TILT_MULTIPLY:F

    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonBounceListView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->mFirstAnimatorLiestener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AirButtonBounceListView;)V
    .locals 0
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->generateAndPlaySecondAnimation()V

    return-void
.end method

.method private generateAndPlaySecondAnimation()V
    .locals 18

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    array-length v13, v13

    new-array v2, v13, [Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    array-length v13, v13

    new-array v10, v13, [Landroid/animation/ObjectAnimator;

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v13, v13, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne v12, v13, :cond_0

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v13, v13, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    sub-int v9, v12, v13

    move v4, v12

    if-gez v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v13, v13, v12

    const-string/jumbo v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getX()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getX()F

    move-result v17

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v13, v13, v12

    const-string/jumbo v14, "y"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getY()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getY()F

    move-result v17

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v13, v13, v12

    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    mul-int/lit8 v11, v13, 0x50

    add-int/lit8 v8, v11, 0x50

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v13, v13, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v5, 0x0

    :cond_1
    :goto_3
    int-to-long v13, v11

    invoke-virtual {v3, v13, v14}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    int-to-long v13, v8

    invoke-virtual {v3, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    aput-object v1, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    aput-object v3, v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getStartRotateAnimation(II)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v10, v12

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v13, v13, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne v12, v13, :cond_5

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    aget-object v13, v2, v12

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    aget-object v13, v10, v12

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method


# virtual methods
.method protected adjustViewDelta(I)V
    .locals 2
    .param p1    # I

    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustViewDelta(I)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected generateAndPlayStartAnimation()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x40000000

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playOpenSound()V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v5, v10, :cond_1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    const-string/jumbo v6, "scaleX"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    const-string/jumbo v6, "scaleY"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    const/16 v6, 0xf0

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getStartRotateAnimation(II)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ne v5, v10, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    const-wide/16 v5, 0xf0

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v5, v12, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v10

    aput-object v0, v5, v8

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v11}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v5, v12, :cond_3

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v11}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->mFirstAnimatorLiestener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method protected getAnimationRotation(IIF)F
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # F

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    mul-float/2addr v2, p3

    int-to-float v3, p2

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v2

    add-float/2addr v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v2, v4, :cond_2

    rem-int/lit8 v2, v0, 0x4

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v2

    sub-float/2addr v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v2

    add-float/2addr v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v2

    sub-float/2addr v2, v1

    goto :goto_0
.end method

.method protected getRotation(I)F
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v1, v2, :cond_2

    rem-int/lit8 v1, v0, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    neg-float v1, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    neg-float v1, v1

    goto :goto_0
.end method

.method protected getStartRotateAnimation(II)Landroid/animation/ObjectAnimator;
    .locals 10
    .param p1    # I
    .param p2    # I

    const/4 v9, 0x1

    move v3, p2

    add-int/lit16 v2, v3, 0x2d0

    const/high16 v5, 0x3fc00000

    invoke-virtual {p0, p1, v9, v5}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getAnimationRotation(IIF)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    const-string/jumbo v6, "rotation"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v4, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/airbutton/animation/BounceEaseIn;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/samsung/android/airbutton/animation/BounceEaseIn;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v1
.end method

.method protected getTouchUpRotateAnimation(I)Landroid/animation/AnimatorSet;
    .locals 11
    .param p1    # I

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getRotation(I)F

    move-result v1

    const/4 v5, -0x1

    const v6, 0x3f4ccccd

    invoke-virtual {p0, p1, v5, v6}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getAnimationRotation(IIF)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    const-string/jumbo v6, "rotation"

    new-array v7, v10, [F

    aput v1, v7, v8

    aput v4, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x50

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    const-string/jumbo v6, "rotation"

    new-array v7, v10, [F

    aput v4, v7, v8

    aput v1, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/airbutton/animation/BounceEaseIn;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/samsung/android/airbutton/animation/BounceEaseIn;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x2d0

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->onTouchUp(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v1, v1, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsFinishing:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->getTouchUpRotateAnimation(I)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method
