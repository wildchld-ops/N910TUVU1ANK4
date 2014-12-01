.class public Lcom/android/launcher2/QuickViewMainMenu;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_DURATION:I = 0x258

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field private static final QV_PAGE_SNAP_ANIMATION_DURATION:I = 0x190

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static final ROW_BY_COL_LAYOUT:[[I

.field private static final TAG:Ljava/lang/String; = "QuickViewMainMenu"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I

.field private static sHitRect:Landroid/graphics/Rect;


# instance fields
.field public final MENU_ZONE:I

.field public final PAGE_SNAP_ANIMATION_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mConfigurationChangeIsInProgress:Z

.field private mDragState:I

.field private mDropCheck:Z

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private final mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsReadOnly:Z

.field private mIsSaved:Z

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxDeltaX:I

.field private mMaximumVelocity:I

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mReadOnlyToastResId:I

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollCheck:Z

.field private mScrollDelay:I

.field private mScrollHalfWidth:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

.field private mScrollState:I

.field private mScrollWidth:I

.field mScroller:Landroid/widget/Scroller;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x680000

    const/high16 v2, -0xe00000

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewMainMenu;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewMainMenu;->sHitRect:Landroid/graphics/Rect;

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x3
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x3
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0e0031

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->MENU_ZONE:I

    iput v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    new-instance v3, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewMainMenu;)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    iput v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    iput v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDropCheck:Z

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollCheck:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    iput-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v4, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1, v7, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollDelay:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    const v3, 0x7f050012

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mEnterAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const v3, 0x7f050013

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mExitAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x168

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/QuickViewMainMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickViewMainMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getViewLayout(III)V
    .locals 23

    if-lez p1, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_3

    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    if-le v6, v8, :cond_2

    move v8, v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    mul-int v15, p3, v13

    mul-int v16, p2, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v19, 0x3f800000

    cmpl-float v19, v14, v19

    if-lez v19, :cond_4

    const/high16 v14, 0x3f800000

    :cond_4
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private makeScreen(IZ)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x31

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v7, 0x7f0e001d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v7, 0x7f0e001e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v10, v2, v1, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v6, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v7, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v6

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v7

    add-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 6

    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->access$000(Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private savemenupage()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    :cond_0
    return-void
.end method

.method private scroll(IIZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-gez p1, :cond_3

    if-lez v1, :cond_2

    add-int v2, v1, p1

    if-gez v2, :cond_1

    neg-int v2, v1

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-lez p1, :cond_0

    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    sub-int v0, v2, v1

    if-lez v0, :cond_5

    if-le v0, p1, :cond_4

    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public static zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V
    .locals 4

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDrag()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    return-void
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu;->savemenupage()V

    return-void
.end method

.method public computeScroll()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setScrollX(I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setScrollY(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-eq v3, v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v7, v8, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    :cond_3
    iget v7, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v1, v7, v2

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    if-eqz v13, :cond_0

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v12, 0x3f800000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_6

    :cond_2
    if-lez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_8

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v14, 0x1

    if-lt v5, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_5

    :cond_4
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v3}, Lcom/android/launcher2/QuickViewMainMenu;->getViewLayout(III)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v14}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickView;->mIsWorkspace:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/QuickView;->setOpenStartRect(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/QuickView;->setCloseEndRect(I)V

    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v14}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v2, v14, :cond_e

    add-int/lit8 v14, v9, -0x1

    if-eq v11, v14, :cond_d

    add-int/lit8 v14, v9, 0x1

    if-ne v11, v14, :cond_e

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_11

    const/4 v12, 0x0

    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/QuickViewMainMenu;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_22

    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v15}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v15

    if-eq v14, v15, :cond_14

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    sub-long v7, v14, v16

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-long v14, v14

    cmp-long v14, v7, v14

    if-ltz v14, :cond_1b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v14}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    :goto_6
    const/high16 v12, 0x3f800000

    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_16

    :cond_15
    if-lez v6, :cond_16

    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v12}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v14, :cond_1c

    const-string v14, "QuickViewMainMenu"

    const-string v15, "Failed to get current rectangles from animation engine"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_19

    const/high16 v12, 0x3f800000

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    :cond_1a
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_6

    :cond_1b
    long-to-float v14, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-float v15, v15

    div-float v12, v14, v15

    goto :goto_7

    :cond_1c
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v11

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/QuickView;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_1f

    float-to-double v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1e

    :cond_1d
    float-to-double v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L

    cmpl-double v14, v14, v16

    if-lez v14, :cond_20

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_20

    :cond_1e
    if-ne v11, v9, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_1f
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_20
    add-int/lit8 v14, v9, -0x1

    if-eq v11, v14, :cond_21

    if-eq v11, v9, :cond_21

    add-int/lit8 v14, v9, 0x1

    if-ne v11, v14, :cond_1f

    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto :goto_9

    :cond_22
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    if-eqz v14, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollHalfWidth:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    div-int v9, v14, v15

    :cond_23
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_10

    add-int/lit8 v14, v9, -0x1

    if-eq v11, v14, :cond_24

    if-eq v11, v9, :cond_24

    add-int/lit8 v14, v9, 0x1

    if-ne v11, v14, :cond_25

    :cond_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto :goto_a
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 29

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v9, v25, v26

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v8, v25, v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v23, v25, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v25, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v25, 0x7f0e001f

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/QuickViewMainMenu;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    sget-object v25, Lcom/android/launcher2/QuickViewMainMenu;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v25, 0x80

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_0
    sget v25, Lcom/android/launcher2/QuickViewMainMenu;->mScaleFactor:F

    const v26, 0x3ca3d70a

    add-float v25, v25, v26

    const v26, 0x3f933333

    cmpg-float v25, v25, v26

    if-gez v25, :cond_3

    sget v25, Lcom/android/launcher2/QuickViewMainMenu;->mScaleFactor:F

    const v26, 0x3ca3d70a

    add-float v17, v25, v26

    :goto_1
    sput v17, Lcom/android/launcher2/QuickViewMainMenu;->mScaleFactor:F

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v9

    move/from16 v25, v0

    neg-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v7, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v14, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    move v3, v14

    :goto_3
    const/16 v25, 0x0

    const/high16 v26, 0x3f800000

    move/from16 v0, v26

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/high16 v3, 0x3f800000

    :cond_0
    const/high16 v25, 0x437f0000

    mul-float v25, v25, v3

    move/from16 v0, v25

    float-to-int v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_1

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v25, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-interface/range {v25 .. v26}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_6

    :goto_4
    return-void

    :cond_2
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    :cond_3
    const v17, 0x3f933333

    goto/16 :goto_1

    :cond_4
    const/high16 v17, 0x3f800000

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_5
    const/high16 v25, 0x3f800000

    sub-float v3, v25, v14

    goto/16 :goto_3

    :cond_6
    const/high16 v25, 0x3f800000

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v12

    move-object/from16 v25, p2

    check-cast v25, Landroid/view/ViewGroup;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v10, v25, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v25, v22, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v13

    move/from16 v26, v0

    div-float v18, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v25, v21, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v10

    sub-float v25, v25, v26

    int-to-float v0, v12

    move/from16 v26, v0

    div-float v19, v25, v26

    cmpl-float v25, v19, v18

    if-lez v25, :cond_7

    move/from16 v16, v18

    :goto_5
    mul-float v16, v16, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    add-float v25, v25, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/high16 v27, 0x40000000

    div-float v26, v26, v27

    add-float v26, v26, v24

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    neg-int v0, v12

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000

    div-float v26, v26, v27

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_7
    move/from16 v16, v19

    goto/16 :goto_5

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4
.end method

.method public drawCloseAnimation()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawOpenAnimation()V

    return-void
.end method

.method protected drop(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->drop(II)V

    return-void
.end method

.method protected endDrag()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    return-void
.end method

.method public getCheckedIndex()I
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getTargetPage()Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x2

    new-array v5, v6, [I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    aget v6, v5, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    if-gez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v4, v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    aget v7, v5, v8

    sub-int v4, v6, v7

    :cond_2
    :goto_2
    if-le v4, v0, :cond_0

    move v0, v4

    move v1, v3

    goto :goto_1

    :cond_3
    aget v6, v5, v8

    if-ltz v6, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v6, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-le v1, v6, :cond_6

    iget v6, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    return-object v6

    :cond_6
    iget v6, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ge v1, v6, :cond_5

    iget v6, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    goto :goto_3
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v2

    :goto_0
    const-string v4, "QuickViewMainMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreen() screenCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " secretMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsSecretQuickView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/Scroller;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1, v8}, Lcom/android/launcher2/QuickViewMainMenu;->makeScreen(IZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected measureChildViews()V
    .locals 10

    const/high16 v9, 0x40000000

    const/4 v8, 0x0

    iget v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mWidthMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHeightMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v6, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public moveCurrentPage(Z)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    new-array v0, v4, [I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz v0, :cond_0

    aget v2, v0, v1

    if-gez v2, :cond_0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    :cond_0
    aget v2, v0, v1

    iget v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getTargetPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->moveCurrentPage(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-boolean v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDropCheck:Z

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->refreshView()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    move v1, v6

    :goto_1
    const v5, 0x7f0c0241

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-nez v5, :cond_6

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0x15

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_7

    check-cast v4, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/launcher2/QuickViewMainMenu$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/QuickViewMainMenu$1;-><init>(Lcom/android/launcher2/QuickViewMainMenu;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0x31

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_7
    check-cast v4, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    goto :goto_3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->isAnimating()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float v13, v11, v13

    float-to-int v3, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    sub-float v13, v6, v13

    float-to-int v2, v13

    mul-int v13, v3, v3

    mul-int v14, v2, v2

    add-int/2addr v13, v14

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    sub-int v4, v13, v14

    const/16 v13, 0x32

    if-le v4, v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    sub-float/2addr v13, v6

    float-to-int v8, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v5, :cond_4

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v13, :cond_3

    if-eqz v10, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->acquire()V

    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->getFinalX()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrX()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->isFinished()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    if-ge v9, v13, :cond_7

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    :cond_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->removeSelf()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v13, :cond_1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    float-to-int v13, v13

    int-to-float v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    int-to-float v7, v13

    float-to-int v13, v6

    float-to-int v14, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v13

    float-to-int v14, v7

    float-to-int v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v14

    if-ne v13, v14, :cond_1

    sub-float v13, v11, v12

    float-to-int v3, v13

    sub-float v13, v6, v7

    float-to-int v2, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    mul-int v13, v3, v3

    mul-int v14, v2, v2

    add-int/2addr v13, v14

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    float-to-int v13, v6

    float-to-int v14, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->isChangingOrientation()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_2

    const/4 v11, 0x1

    :goto_0
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->measureChildViews()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickView;->updateParamsIfNeeded(Z)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v13, 0x1

    if-ge v6, v13, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v13, v13

    if-eq v13, v6, :cond_5

    :cond_4
    new-array v13, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-eq v13, v6, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_7

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-ge v8, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    new-array v13, v6, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v14, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollHalfWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c022f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0090

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int v4, v13, v14

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aput-object v14, v13, v8

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    add-int v14, v3, v5

    add-int v15, v4, v2

    invoke-virtual {v13, v3, v4, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v13, Lcom/android/launcher2/QuickViewMainMenu;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    sget-object v13, Lcom/android/launcher2/QuickViewMainMenu;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v8

    invoke-virtual {v13, v1, v14}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v8

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v8

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_d
    sub-int v12, p4, p2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    add-int v9, v13, v14

    if-le v9, v12, :cond_f

    sub-int v13, v9, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setScrollX(I)V

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setScrollX(I)V

    goto/16 :goto_1

    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setScrollX(I)V

    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_7
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimStateOkayForClickEvents()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickView;->startDrag(Landroid/view/View;)V

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move v0, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mWidthMeasureSpec:I

    iput p2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHeightMeasureSpec:I

    return-void
.end method

.method public onPinchOut()Z
    .locals 2

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->isAnimating()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->isFinished()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->computeScroll()V

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    sub-float/2addr v13, v10

    float-to-int v3, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v13, v12

    float-to-int v4, v13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    if-le v13, v14, :cond_4

    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v13, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v16, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v17, v17, v4

    invoke-virtual/range {v13 .. v17}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    :cond_7
    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v5

    const/4 v13, -0x1

    if-eq v5, v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-eq v5, v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_8

    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-ge v13, v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->scrollToRight()V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-le v13, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->scrollToLeft()V

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->removeSelf()V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v9, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    float-to-int v6, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getTargetPage()Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    if-le v13, v14, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ne v2, v13, :cond_b

    if-lez v6, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->snapToQvPage()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    :cond_d
    :goto_5
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v13, v14, :cond_e

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->removeSelf()V

    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickViewMainMenu;->drop(II)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v13, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    :cond_11
    if-gez v6, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    goto :goto_4

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    sub-float v1, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v13

    invoke-virtual {v13, v10, v1}, Lcom/android/launcher2/PageIndicatorManager;->snapPageTouchArea(FF)I

    move-result v7

    const/4 v13, -0x1

    if-le v7, v13, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->snapToQvPage()V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :cond_0
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_0
.end method

.method refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public scrollLeft()V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->scrollStart(I)V

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    neg-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollStart(I)V

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public scrollStart(I)V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    add-int v0, v1, p1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    iput v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollDelayed()V

    return-void
.end method

.method public scrollToRight()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollDelayed()V

    return-void
.end method

.method public setQvPage(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->setPage(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setReadOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    return-void
.end method

.method public setReadOnlyToastId(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    return-void
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/16 v5, 0x258

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollCheck:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method public snapToQvPage()V
    .locals 7

    const/4 v2, 0x2

    const/4 v4, 0x0

    new-array v6, v2, [I

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz v6, :cond_0

    aget v0, v6, v4

    if-gez v0, :cond_0

    aget v0, v6, v4

    add-int/lit8 v0, v0, -0x1

    aput v0, v6, v4

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    aget v3, v6, v4

    iget v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v3, v5

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollCheck:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected swapScreen(I)V
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    add-int v2, p1, v0

    invoke-static {p0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    add-int/2addr v2, v0

    add-int v3, p1, v0

    invoke-interface {v1, v2, v3}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->updateTags()V

    :cond_1
    return-void
.end method

.method protected updateTags()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-void
.end method
