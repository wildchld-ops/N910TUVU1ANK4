.class public abstract Lcom/android/launcher2/QuickView;
.super Landroid/widget/FrameLayout;
.source "QuickView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickView$Animate;,
        Lcom/android/launcher2/QuickView$QuickViewInfoProvider;
    }
.end annotation


# static fields
.field public static final ANIMATION_IN_TIME:I = 0x190

.field public static final ANIMATION_OUT_TIME:I = 0x168

.field protected static final ANIMATION_STATE_CLOSE_DONE:I = 0x8

.field protected static final ANIMATION_STATE_CLOSE_RUNNING:I = 0x4

.field protected static final ANIMATION_STATE_CLOSE_STARTING:I = 0x3

.field protected static final ANIMATION_STATE_OPEN_DONE:I = 0x7

.field protected static final ANIMATION_STATE_OPEN_NONE:I = 0xa

.field protected static final ANIMATION_STATE_OPEN_RUNNING:I = 0x2

.field protected static final ANIMATION_STATE_OPEN_STARTING:I = 0x1

.field protected static final DEBUG:Z = false

.field static final INVALID_VALUE:I = -0x1

.field public static final PINCH_DISTANCE_DELTA:I = 0x32

.field protected static final SCALE_FACTOR:F = 1.15f

.field private static final TAG:Ljava/lang/String; = "QuickView"

.field static final TOUCH_STATE_DRAGGING:I = 0x2

.field static final TOUCH_STATE_PINCHIN:I = 0x4

.field static final TOUCH_STATE_PINCHOUT:I = 0x3

.field static final TOUCH_STATE_REST:I = 0x0

.field static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static mScaleFactor:F


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field protected mAniEngine:Lcom/android/launcher2/AnimateEngine;

.field protected mAnimationDuration:I

.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field private mChangingOrientation:Z

.field protected mChildGapH:I

.field protected mChildGapV:I

.field protected mChildRects:[Landroid/graphics/Rect;

.field protected mCurrentPage:I

.field protected mCurrentRects:[Landroid/graphics/Rect;

.field protected mDraggingIndex:I

.field protected mDraggingView:Landroid/view/View;

.field protected mDvfsHelper:Landroid/os/DVFSHelper;

.field protected mEnabledChildAnimation:Z

.field protected mFinishRects:[Landroid/graphics/Rect;

.field protected mIsSecretQuickView:Z

.field protected mIsWorkspace:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mMultiTouchUsed:Z

.field private mOrientation:I

.field protected mOriginDragIndex:I

.field protected final mPanelPadding:Landroid/graphics/Rect;

.field private final mPanelSizeLong:I

.field private final mPanelSizeLong2:I

.field private final mPanelSizeShort:I

.field private final mPanelSizeShort2:I

.field protected mPinchIndex:I

.field protected mPinchOutIndex:I

.field protected mPinchOutProcess:Z

.field protected mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

.field protected mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScreenRect:Landroid/graphics/Rect;

.field protected mStartRects:[Landroid/graphics/Rect;

.field protected mTimeStore:J

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTouchPointDistance:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchedView:Landroid/view/View;

.field private mUpdateHitRect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iput v2, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mIsWorkspace:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->USE_SET_INTEGRATOR_HAPTIC:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    const v1, 0x7f0c022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort2:I

    const v1, 0x7f0c022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong:I

    const v1, 0x7f0c022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong2:I

    new-instance v1, Lcom/android/launcher2/AnimateEngine;

    invoke-direct {v1}, Lcom/android/launcher2/AnimateEngine;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private clearDragVars()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    return-void
.end method

.method private initDVFSHelper()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    :cond_0
    return-void
.end method

.method private setAniRects([Landroid/graphics/Rect;II)V
    .locals 15
    .param p1    # [Landroid/graphics/Rect;
    .param p2    # I
    .param p3    # I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v8

    if-lez v8, :cond_0

    if-ltz p2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p2

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v3, v0, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    iget-boolean v8, p0, Lcom/android/launcher2/QuickView;->mIsWorkspace:Z

    if-eqz v8, :cond_3

    aget-object v8, p1, p2

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v5, v9

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v10, v6, v10

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPageHorizontalOffset()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    :goto_2
    if-ltz v3, :cond_4

    aget-object v8, p1, v3

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    aget-object v8, p1, v3

    aget-object v9, p1, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    neg-int v9, v9

    sub-int/2addr v9, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    aget-object v8, p1, p2

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v5, v9

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v10, v6, v10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0090

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0090

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p2, 0x1

    :goto_3
    move/from16 v0, p3

    if-ge v3, v0, :cond_0

    aget-object v8, p1, v3

    add-int/lit8 v9, v3, -0x1

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    aget-object v8, p1, v3

    aget-object v9, p1, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public cancelDrag()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->updateTags()V

    iput v3, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    iput v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput-object v4, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v4, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    iput v2, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    iput v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method public drawCloseAnimation()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->referenceTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->referenceTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    return-void
.end method

.method public drawOpenNonAnimation()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method protected drop(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->isValidTag(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->swapScreen(I)V

    :goto_1
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f0f00d8

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    iget-boolean v1, p0, Lcom/android/launcher2/QuickView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6457

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->swapScreen(I)V

    goto :goto_1
.end method

.method protected endDrag()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->clearDragVars()V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewDragEnd()V

    return-void
.end method

.method protected getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong2:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort2:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getTouchState()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTouchedIndex(II)I
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected getYOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1    # Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->clearDragVars()V

    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->initDVFSHelper()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0c0244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    const v1, 0x7f0c0243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    return-object v1
.end method

.method public abstract initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
.end method

.method protected final isAnimStateOkayForClickEvents()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAnimating()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/QuickView;->isAvailableRect(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method protected isAvailableRect(Landroid/graphics/Rect;I)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
    .param p2    # I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChangingOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretQuickViewMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    return v0
.end method

.method protected abstract isValidTag(Ljava/lang/Object;)Z
.end method

.method protected onPinchOut()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    iget v0, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

.method public openInstantly()V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method protected referenceTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    if-eq v3, v5, :cond_0

    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    :cond_0
    iput v3, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const v5, 0x7f020099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f0c0244

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    const v5, 0x7f0c0243

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong2:I

    iget v6, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort2:I

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget v5, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v5, :pswitch_data_0

    :goto_1
    iput-object v7, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    return-object v2

    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    iget v6, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong:I

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_0
    const/4 v5, 0x7

    iput v5, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    :pswitch_2
    const/16 v5, 0x8

    iput v5, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimateOpenNone()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method protected setCloseEndRect(I)V
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher2/QuickView;->setAniRects([Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return-void
.end method

.method protected setOpenStartRect(I)V
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher2/QuickView;->setAniRects([Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setSecretQuickViewMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    return-void
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumSecretPages()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    const/high16 v0, 0x3f800000

    sput v0, Lcom/android/launcher2/QuickView;->mScaleFactor:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewDragStart()V

    return-void
.end method

.method protected abstract swapScreen(I)V
.end method

.method protected updateParamsIfNeeded(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    return-void
.end method

.method protected abstract updateTags()V
.end method
