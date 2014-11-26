.class public Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;
.super Lcom/android/systemui/recent/cardholder/BaseContainer;
.source "RecentsVerticalScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/recent/cardholder/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    sget v2, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->mBottomStackVisiblePart:F

    const/high16 v3, 0x42700000

    add-float/2addr v2, v3

    sput v2, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->BOTTOM_STACK_BORDER:F

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/high16 v0, 0x43b40000

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-super {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createBottomStackInAnimation()Landroid/view/animation/Animation;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method protected createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 12
    .param p1    # Landroid/view/View;

    const v2, 0x3f8ccccd

    const/high16 v1, 0x3f800000

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v7, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v5, v7

    int-to-float v6, v8

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v10, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->BOTTOM_STACK_BORDER:F

    sget v2, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->mBottomStackVisiblePart:F

    sub-float/2addr v1, v2

    invoke-direct {v10, v11, v11, v11, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget v1, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iput v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    int-to-float v1, v7

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v9
.end method

.method protected createBottomStackOutAnimation()Landroid/view/animation/Animation;
    .locals 12

    const/4 v11, 0x0

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f800000

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float v5, v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v10, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget v1, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    return-object v7
.end method

.method protected createDisappearAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->getSlidePosition(Landroid/view/View;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_0
    sget v3, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->CLOSE_ANIMATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget v3, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->CLOSE_ANIMATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1

    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0
.end method

.method protected createTopStackInAnimation()Landroid/view/animation/Animation;
    .locals 11

    const/high16 v10, 0x40000000

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/high16 v3, 0x3f800000

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    iget v5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->Z_DIFF:F

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    const v3, 0x3f733333

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    sget v5, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->MAX_STACK_APPS:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->TOP_STACK_Z_DIFF:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    const-string v3, "BaseContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v10

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v6, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget v3, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iput v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/cardholder/BaseContainer;->stopAnimators(Landroid/view/View;)V

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-virtual {v9, v3}, Landroid/view/View;->setPivotX(F)V

    return-object v7
.end method

.method protected createTopStackOutAnimation()Landroid/view/animation/Animation;
    .locals 13

    const/4 v12, 0x1

    const/high16 v2, 0x3f800000

    const/4 v6, 0x0

    const v1, 0x3f733333

    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    sget v4, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->MAX_STACK_APPS:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->TOP_STACK_Z_DIFF:F

    mul-float/2addr v3, v4

    add-float v7, v1, v3

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sget v3, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->Z_DIFF:F

    mul-float/2addr v1, v3

    sub-float v8, v2, v1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, v7, v8

    div-float v3, v7, v8

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float v5, v4, v5

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v10, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v10, v6, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    sget v1, Lcom/android/systemui/recent/cardholder/RecentsVerticalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v9
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getScrollDistance(FF)F
    .locals 0
    .param p1    # F
    .param p2    # F

    return p2
.end method

.method protected getScrollPosition(Landroid/view/View;)F
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method protected getScrollSize()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayWidth:I

    iget v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayHeight:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayHeight:I

    goto :goto_0
.end method

.method protected getScrollVelocity(FF)F
    .locals 0
    .param p1    # F
    .param p2    # F

    return p2
.end method

.method protected getSlideDistance(FF)F
    .locals 0
    .param p1    # F
    .param p2    # F

    return p1
.end method

.method protected getSlidePosition(Landroid/view/View;)F
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method protected getSlideVelocity(FF)F
    .locals 0
    .param p1    # F
    .param p2    # F

    return p1
.end method

.method protected optHide(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method protected optShow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method protected setRotation(Landroid/view/View;F)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/high16 v4, 0x40000000

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/recent/cardholder/Rotate3dAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/cardholder/Rotate3dAnimation;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected setScrollPosition(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # F

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method protected setSlidePosition(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # F

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    return-void
.end method
