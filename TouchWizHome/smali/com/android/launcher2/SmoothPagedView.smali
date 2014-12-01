.class public abstract Lcom/android/launcher2/SmoothPagedView;
.super Lcom/android/launcher2/PagedView;
.source "SmoothPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;,
        Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;
    }
.end annotation


# static fields
.field static final DEFAULT_MODE:I = 0x0

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field static final X_LARGE_MODE:I = 0x1


# instance fields
.field private mBaseLineFlingVelocity:F

.field private mFlingVelocityInfluence:F

.field private mHandler:Landroid/os/Handler;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollDelay:I

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollMode:I

.field private mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

.field private mScrollState:I

.field private mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8000000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    new-instance v2, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;-><init>(Lcom/android/launcher2/SmoothPagedView;)V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollMode()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-nez v2, :cond_0

    const v2, 0x451c4000

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    const v2, 0x3ecccccd

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    new-instance v2, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-direct {v2}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-eq v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEdgeScroll(II)V
    .locals 6

    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneLeftWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneRightWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge p1, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToLeft(II)V

    goto :goto_0

    :cond_2
    sub-int v5, v2, v3

    if-le p1, v5, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToRight(II)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v5}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0
.end method

.method private isInsideScrollZone()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToLeft(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    :cond_0
    return-void
.end method

.method private scrollToRight(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    :cond_0
    return-void
.end method

.method private snapToPageWithVelocity(IIZ)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v2

    iget v4, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v2, v4

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v1, v4, 0x64

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->setDistance(I)V

    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float v4, v1

    int-to-float v5, v1

    int-to-float v6, p2

    iget v7, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->disableSettle()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x64

    goto :goto_1
.end method


# virtual methods
.method protected cancelScrollRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    return-void
.end method

.method public computeScroll()V
    .locals 6

    const/4 v5, 0x1

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v4, v5, :cond_1

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->computeScroll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    move-result v3

    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v4, v5, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28

    div-float v2, v4, v5

    iget v4, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    iget v5, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    iget v4, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    iput v2, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    const/high16 v4, 0x3f800000

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    const/high16 v4, -0x40800000

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    iput v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->checkEdgeScroll(II)V

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v2}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getScrollMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView;->isInsideScrollZone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SmoothPagedView;->getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->isWaitingtoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnterScrollArea(III)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onExitScrollArea()V
    .locals 0

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    mul-int v5, v7, v4

    add-int v7, v5, p1

    rem-int/2addr v7, v5

    div-int v2, v7, v4

    add-int v7, v5, p1

    rem-int/2addr v7, v5

    rem-int v3, v7, v4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v7, v1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v7, :cond_0

    move-object v6, v1

    check-cast v6, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v6, v2, v0, v4, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->notifyWidgetsOfPageScroll(IIII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onScrollComplete()V
    .locals 0

    return-void
.end method

.method public scrollToLeft(ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-eqz p1, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1
.end method

.method protected snapToDestination()V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(II)V

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method
