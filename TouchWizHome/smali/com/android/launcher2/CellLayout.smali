.class public abstract Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/DragOrigin;
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$5;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$SpanRect;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "CellLayout"

.field private static isItemApp:Z

.field public static isWidgetResized:Z


# instance fields
.field private final ENABLE_TILT:Z

.field private final TILT_SHADOW_OFFSET_DP:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAcceptsDrops:Z

.field public mAnimateChildInstantly:Z

.field private mBackgroundAlpha:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mChildrenAlpha:F

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field protected final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragState:Lcom/android/launcher2/DragState;

.field mDragging:Z

.field protected mDrawDragOutlines:Z

.field private mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mFingerMovedOnDrag:Z

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mGapX:I

.field private mGapY:I

.field private mGlowBackgroundAlpha:F

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field private mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

.field protected mHomeView:Lcom/android/launcher2/HomeView;

.field mIgnoreOccupied:Z

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDefaultDropTarget:Z

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field protected mIsPaused:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLastVisualize:[I

.field private mLastXY:[F

.field private mNoNeedToDraw:Z

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPageType:I

.field final mPositioner:Lcom/android/launcher2/CellPositioner;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

.field private mSecretPageMetaphor:Landroid/widget/ImageView;

.field private mShadowOffset:F

.field private mStateAnimationFinished:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field protected final mTmpXY:[I

.field final mVisualizer:Lcom/android/launcher2/DeltaVisualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->ENABLE_TILT:Z

    const/4 v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->TILT_SHADOW_OFFSET_DP:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    new-instance v12, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    const/high16 v12, 0x3f800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    const/4 v12, 0x4

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    const/4 v14, -0x1

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    sget-object v12, Lcom/sec/android/app/launcher/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0200fa

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    const v12, 0x7f0200fb

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    const v12, 0x7f0c023d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    const v12, 0x7f020036

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40200000

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    const v12, 0x7f0e0003

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    new-instance v12, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-direct/range {v12 .. v16}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const v12, 0x7f0e0007

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v12, 0x7f0e0008

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move v10, v8

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    const/high16 v12, 0x3f800000

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    const/high16 v12, 0x3f800000

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    new-instance v12, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->newCellPositioner()Lcom/android/launcher2/CellPositioner;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    new-instance v12, Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/DeltaVisualizer;-><init>(Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v5, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v0, p0, v2, v3, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p4, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p3, :cond_6

    aget-object v8, p5, v4

    aget-boolean v8, v8, v5

    if-nez v8, :cond_1

    move v0, v6

    :goto_2
    const/4 v3, 0x0

    move v1, v4

    :goto_3
    add-int v8, v4, p1

    if-ge v1, v8, :cond_0

    if-ge v1, p3, :cond_0

    move v2, v5

    :goto_4
    add-int v8, v5, p2

    if-ge v2, v8, :cond_4

    if-ge v2, p4, :cond_4

    if-eqz v0, :cond_2

    aget-object v8, p5, v1

    aget-boolean v8, v8, v2

    if-nez v8, :cond_2

    move v0, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_3

    const/4 v3, 0x0

    :cond_0
    mul-int v8, p1, p2

    if-ne v3, v8, :cond_5

    aput v4, p0, v7

    aput v5, p0, v6

    :goto_6
    return v6

    :cond_1
    move v0, v7

    goto :goto_2

    :cond_2
    move v0, v7

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    move v6, v7

    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4

    const v2, 0x7f0c0199

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0c0193

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0196

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateAppIconView(Lcom/android/launcher2/AppIconView;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private invalidateVisualize()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public static isItemApp()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return v0
.end method

.method private onLauncherTiltChanged(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    neg-float v1, p1

    const/high16 v2, 0x40c00000

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateGlowRect()V
    .locals 8

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f800000

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float v0, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4

    const v2, 0x7f0c019c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0c0193

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0196

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    return-void
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    :cond_0
    return-void
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->isPageConstructed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher2/CellLayoutChildren;->addItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v2

    return v2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p4

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZ)Z
    .locals 9

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iput-boolean v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    :cond_1
    iput-boolean v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput p3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eqz p6, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_0
    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    instance-of v7, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iput p2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput p3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->CLIP_BY_DEFAULT()Z

    move-result v7

    invoke-virtual {p0, p1, p4, v6, v7}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    move-result v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;IZZ)Z
    .locals 11

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p4}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_3

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v6, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->enableClipping()V

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method buildChildrenLayer()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    return-void
.end method

.method public clearTagCellInfo()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method commitDeltas()V
    .locals 11

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v10, v8, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    check-cast v10, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v1

    iput v1, v10, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    iput v1, v10, Lcom/android/launcher2/HomeItem;->spanY:I

    new-instance v0, Lcom/android/launcher2/DragState;

    iget-object v1, v8, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v1}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    return-void
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3

    sget-object v1, Lcom/android/launcher2/CellLayout$5;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    const v2, 0x7f03001e

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/launcher2/HomeView;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroyDummyPanel()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->disableHardwareLayers()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/CellLayoutChildren;->drawShadows(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v5, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    aget v0, v5, v2

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/high16 v5, 0x3f000000

    add-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {p1, v1, v7, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    if-lez v3, :cond_0

    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    if-lez v0, :cond_1

    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 15

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    :goto_0
    const/4 v6, 0x0

    if-ltz p4, :cond_0

    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_0
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    if-ltz p4, :cond_1

    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    const/4 v7, 0x0

    if-ltz p5, :cond_2

    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_2
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    if-ltz p5, :cond_3

    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    move v9, v7

    :goto_3
    if-ge v9, v2, :cond_d

    if-nez v3, :cond_d

    move v8, v6

    :goto_4
    if-ge v8, v1, :cond_c

    const/4 v4, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v4, v0, :cond_a

    const/4 v5, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v5, v0, :cond_9

    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    add-int v10, v9, v5

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v10

    if-eqz v10, :cond_8

    :cond_4
    add-int/2addr v8, v4

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v10

    if-eqz v10, :cond_8

    add-int/2addr v8, v4

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    const/4 v10, 0x0

    aput v8, p1, v10

    const/4 v10, 0x1

    aput v9, p1, v10

    :cond_b
    const/4 v3, 0x1

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_d
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_e

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_e

    return v3

    :cond_e
    const/16 p4, -0x1

    const/16 p5, -0x1

    goto/16 :goto_0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    move-result v0

    return v0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v3, 0x0

    move/from16 v0, p2

    int-to-float v4, v0

    aput v4, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v3, 0x1

    move/from16 v0, p3

    int-to-float v4, v0

    aput v4, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v16

    const/4 v1, 0x0

    aget v1, v16, v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v9, v1, v3

    const/4 v1, 0x1

    aget v1, v16, v1

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v10, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v11, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v12, v1, v3

    new-instance v2, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v2, v14}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v2, v11}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    invoke-virtual {v2, v12}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    if-nez p6, :cond_4

    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_0

    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_1

    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    :goto_0
    const/4 v1, 0x2

    new-array v15, v1, [I

    const/4 v1, 0x0

    invoke-virtual {v14}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, v15, v1

    const/4 v1, 0x1

    invoke-virtual {v14}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    aput v3, v15, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    aput v3, v15, v1

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    aput v3, v15, v1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher2/CellPositioner;->updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, p4, v1

    const/4 v1, 0x1

    const/4 v3, -0x1

    aput v3, p4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    aput v3, p4, v1

    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    aput v3, p4, v1

    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    aput v3, p5, v1

    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    aput v3, p5, v1

    const/4 v1, 0x0

    aget v1, p4, v1

    if-ne v1, v11, :cond_6

    const/4 v1, 0x1

    aget v1, p4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v12, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v13

    sget-boolean v1, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v1, :cond_7

    const-string v1, "CellLayout"

    const-string v3, "Null Pointer Exception Occurred"

    invoke-static {v1, v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAbsMatrix(Landroid/graphics/Matrix;Landroid/view/ViewParent;)Landroid/graphics/Matrix;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    if-eq p2, v1, :cond_0

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundBaseDarken()F
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->getBaseDarken()F

    move-result v1

    :cond_0
    return v1
.end method

.method public getCellHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    return v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method getContainer()Lcom/android/launcher2/CellLayoutContainer;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/CellLayoutContainer;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method

.method getCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    if-lez p1, :cond_1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    sub-int/2addr v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 3

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    if-lez p1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v2, p2, v1

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v1, p2, v5

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, p2, v6

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-ne v1, v6, :cond_0

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v1, v1, -0x1

    aput v1, p2, v5

    :cond_0
    return-void
.end method

.method getGapX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method getGapY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method getHeightGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method public getHoverAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    return v0
.end method

.method public getHoverScale()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    return v0
.end method

.method getScreen()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isNoNeedToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    return v0
.end method

.method public isOccupiedNoThrow(II)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2, p1, p2, v0, v0}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    return v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method abstract newCellPositioner()Lcom/android/launcher2/CellPositioner;
.end method

.method protected noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method onDragEnter()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 38

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v31

    if-nez v31, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    move-object v3, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v13

    const/4 v2, 0x4

    if-eq v13, v2, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    if-eq v13, v2, :cond_5

    const/4 v2, 0x3

    if-eq v13, v2, :cond_5

    const/4 v2, 0x1

    if-eq v13, v2, :cond_5

    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_5

    move-object/from16 v2, v31

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v35

    const/4 v2, 0x1

    if-ne v13, v2, :cond_b

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v25

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v6, :cond_c

    :cond_6
    const/16 v23, 0x1

    :goto_3
    sput-boolean v23, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    const/4 v2, 0x5

    if-ne v13, v2, :cond_7

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_7

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_7

    iget-object v0, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v24

    const/16 v36, 0x1

    packed-switch v13, :pswitch_data_0

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v10, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v11, v2, v6

    packed-switch v13, :pswitch_data_1

    :cond_9
    :goto_5
    packed-switch v13, :pswitch_data_2

    :cond_a
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    goto :goto_2

    :cond_c
    const/16 v23, 0x0

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    sub-int/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    sub-int/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x0

    int-to-float v7, v4

    aput v7, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x1

    int-to-float v7, v5

    aput v7, v2, v6

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_8

    if-nez v24, :cond_8

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v36

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v32, v0

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v6, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    const/4 v2, 0x0

    aget v2, v32, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v4, v2, v6

    const/4 v2, 0x1

    aget v2, v32, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int v5, v2, v6

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_9

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v30

    const/4 v2, 0x0

    aget v2, v30, v2

    add-int/2addr v4, v2

    const/4 v2, 0x1

    aget v2, v30, v2

    add-int/2addr v5, v2

    goto/16 :goto_5

    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    if-ne v2, v6, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    :cond_d
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragStartedWithItem(Landroid/view/View;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_6

    :pswitch_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v2, :cond_f

    if-nez v24, :cond_f

    const/16 v18, 0x1

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderItem;

    if-nez v2, :cond_e

    if-nez v25, :cond_e

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderIconView;

    if-nez v2, :cond_10

    const/16 v18, 0x1

    :cond_e
    :goto_7
    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v6, p0

    move-object/from16 v7, v35

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_6

    :cond_10
    const/16 v18, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_8

    :pswitch_6
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v19

    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_6

    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_6

    :pswitch_8
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v12

    const-wide/16 v6, -0x65

    cmp-long v2, v14, v6

    if-nez v2, :cond_17

    const/16 v16, 0x1

    :goto_9
    if-eqz v16, :cond_14

    move-object/from16 v2, v31

    check-cast v2, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v12

    :cond_14
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_18

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    if-eqz v2, :cond_16

    :cond_15
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_18

    :cond_16
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_6

    :cond_17
    const/16 v16, 0x0

    goto :goto_9

    :cond_18
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_19

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_19

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1c

    const/16 v21, 0x1

    :goto_a
    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1d

    const/16 v37, 0x1

    :goto_b
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_1a

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_21

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    if-nez v2, :cond_20

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_20

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_1b

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v35, Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    goto/16 :goto_6

    :cond_1c
    const/16 v21, 0x0

    goto :goto_a

    :cond_1d
    const/16 v37, 0x0

    goto :goto_b

    :cond_1e
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v35, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_22

    move-object/from16 v20, v26

    check-cast v20, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v20

    iput v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v20

    iput v11, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v29

    if-eqz v36, :cond_23

    if-eqz v29, :cond_23

    move-object/from16 v0, v29

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_23

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v8, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v9, v2, v6

    move-object v6, v3

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v35

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    :cond_24
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    :cond_25
    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_26

    if-eqz v37, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v2, v31

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    :cond_26
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onDrop()V

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v33, v35

    check-cast v33, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v28

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v33 .. v33}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    :cond_27
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_28

    const/16 v2, 0x6457

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_28
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_2b

    check-cast v34, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_29
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v35

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v4, v5}, Lcom/android/launcher2/CellLayout;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V

    goto :goto_d

    :cond_2b
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_a

    move-object/from16 v2, v34

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_a

    check-cast v34, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto/16 :goto_6

    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_a

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method onDragExit()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v0, v3}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_1

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v10, v19, v20

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    const/high16 v19, 0x437f0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-gt v5, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v11, 0x2

    sub-int v18, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_2

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    add-int v18, v18, v10

    add-int/lit8 v14, v6, 0x1

    :goto_1
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-gt v14, v0, :cond_3

    add-int v19, v17, v16

    add-int v20, v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x1

    :goto_2
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-gt v14, v0, :cond_3

    add-int v19, v17, v16

    add-int v20, v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getPressedOrFocusedBackgroundPadding()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v12

    sub-int v19, v19, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v15

    sub-int v20, v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    const-string v1, "USA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    :cond_0
    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int v8, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v9, p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v6, :cond_1

    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    if-nez v17, :cond_3

    const/high16 v17, -0x80000000

    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_5

    const/high16 v11, -0x80000000

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    sub-int v18, v16, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v7, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    sub-int v18, v10, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    sub-int v5, v18, v19

    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v9, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_4

    move/from16 v0, v16

    if-le v0, v15, :cond_4

    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxWidth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/high16 v18, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    move/from16 v16, v15

    goto/16 :goto_0

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_6

    if-le v10, v14, :cond_6

    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxHeight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/high16 v18, 0x40000000

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    if-ge v10, v14, :cond_1

    move v10, v14

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    :cond_9
    return-void
.end method

.method public onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 0

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    return-void
.end method

.method public onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v7

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v9

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v8

    float-to-int v3, v0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v5, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    :cond_0
    iput-boolean v8, p0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x64

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 8

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    goto :goto_0
.end method

.method pointToCellExact(II[IIIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v5

    sub-int v2, p2, v1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v6

    aget v2, p3, v5

    if-ge v2, p4, :cond_0

    aput p4, p3, v5

    :cond_0
    aget v2, p3, v5

    if-lt v2, p5, :cond_1

    add-int/lit8 v2, p5, -0x1

    aput v2, p3, v5

    :cond_1
    aget v2, p3, v6

    if-ge v2, p6, :cond_2

    aput p6, p3, v6

    :cond_2
    aget v2, p3, v6

    if-lt v2, p7, :cond_3

    add-int/lit8 v2, p7, -0x1

    aput v2, p3, v6

    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    return-void
.end method

.method realRemoveView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method refreshCellDimension()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    return-void
.end method

.method public removeAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    iget-object v3, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    return-void
.end method

.method public setAcceptsDrops(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_3

    instance-of v4, v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    return-void
.end method

.method public setBackgroundAlpha(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    return-void
.end method

.method public setBackgroundAlpha(FFZ)V
    .locals 2

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBackgroundDarken(F)V

    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBlend(Z)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundBaseDarken(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setCellSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setEmptyMessageVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setGaps(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    return-void
.end method

.method public setGridSize(II)V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    sget-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHoverScale(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsDefaultDropTarget(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 11

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide/from16 v2, p7

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    return-void
.end method

.method public setNoNeedToDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-super {p0, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    const/high16 v0, 0x437f0000

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setPageType(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/AppIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateAppIconView(Lcom/android/launcher2/AppIconView;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateAppIconView(Lcom/android/launcher2/AppIconView;)V

    :cond_1
    return-void
.end method

.method public setSecretPageMetaphorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    add-int/2addr v9, p1

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v10

    add-int v7, v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    add-int v8, v9, v10

    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_4

    :cond_0
    iget-boolean v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v9, :cond_4

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPt(II)Z

    move-result v9

    if-eqz v9, :cond_4

    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    aget v9, v1, v12

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    aget v9, v1, v11

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    :cond_2
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v9, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    aget v9, v1, v12

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    aget v9, v1, v11

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public setupDummyPanel()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/DummyPanelView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iput-object p0, v2, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    iput-object v2, v3, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public spanToPixel(II)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 38

    sget-boolean v30, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v30, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v30

    if-eqz v30, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    move-object/from16 v17, v0

    const/16 v30, 0x0

    aget v30, p3, v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v30, 0x1

    aget v30, p3, v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v30, 0x0

    aget v30, v17, v30

    const/16 v31, 0x0

    aget v31, p3, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/16 v30, 0x1

    aget v30, v17, v30

    const/16 v31, 0x1

    aget v31, p3, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/16 v30, 0x2

    aget v30, v17, v30

    move/from16 v0, v30

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v30, 0x3

    aget v30, v17, v30

    move/from16 v0, v30

    move/from16 v1, p5

    if-eq v0, v1, :cond_0

    :cond_2
    const/16 v30, 0x0

    const/16 v31, 0x0

    aget v31, p3, v31

    aput v31, v17, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget v31, p3, v31

    aput v31, v17, v30

    const/16 v30, 0x2

    aput p4, v17, v30

    const/16 v30, 0x3

    aput p5, v17, v30

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v26, v0

    const/16 v30, 0x0

    aget v30, p3, v30

    const/16 v31, 0x1

    aget v31, p3, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    const/16 v30, 0x0

    aget v18, v26, v30

    const/16 v30, 0x1

    aget v25, v26, v30

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    const/16 v31, 0xf0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v30, v0

    if-nez v30, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v30, v0

    if-eqz v30, :cond_d

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v30, v0

    if-eqz v30, :cond_a

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v0, v6

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_5

    aget-object v7, v6, v14

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v30, 0x7f0c01c5

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    const v30, 0x7f0c01c4

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_9

    sub-int v30, v27, v15

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    add-int v25, v25, v30

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v30, v0

    aget-object v30, v30, v20

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    add-int/lit8 v30, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    rem-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    add-int v31, v18, v29

    add-int v32, v25, v12

    move-object/from16 v0, v30

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    const/16 v30, 0x1

    move/from16 v0, p4

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/16 v30, 0x1

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/android/launcher2/PagedView;

    move/from16 v30, v0

    if-eqz v30, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0f0105

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    aget v34, v17, v34

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const/16 v34, 0x0

    aget v34, v17, v34

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/PagedView;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v30

    if-nez v30, :cond_7

    sget-object v30, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-virtual {v0, v1, v8, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v30

    if-eqz v30, :cond_0

    const/16 v30, 0x6458

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_9
    sub-int v30, v28, v16

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    add-int v18, v18, v30

    goto/16 :goto_2

    :cond_a
    move-object/from16 v30, p1

    check-cast v30, Landroid/widget/TextView;

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v0, v6

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_b

    aget-object v7, v6, v14

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v30, 0x7f0c019c

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    const v30, 0x7f0c0199

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    sub-int v30, v28, v16

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    add-int v18, v18, v30

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-int v32, v27, v15

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3feb333333333333L

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v30, v0

    mul-int v30, v30, p4

    add-int/lit8 v31, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v29, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v30, v0

    mul-int v30, v30, p5

    add-int/lit8 v31, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v12, v30, v31

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    int-to-float v0, v12

    move/from16 v31, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v7

    move/from16 v0, v30

    float-to-int v12, v0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v30, v0

    if-eqz v30, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v30, v0

    if-eqz v30, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c0079

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    add-int v21, v30, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v30

    add-int v18, v18, v30

    add-int/lit8 v30, v21, -0x6

    add-int v25, v25, v30

    goto/16 :goto_2

    :cond_f
    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v30, v0

    if-eqz v30, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c00d3

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v30, v0

    if-eqz v30, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c00ac

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    add-int v18, v18, v30

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    sget v31, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v30, v30, v31

    add-int v21, v30, v11

    add-int/lit8 v30, v21, -0x3

    add-int v25, v25, v30

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c008d

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    add-int v18, v18, v30

    goto :goto_5

    :cond_11
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v30, v0

    if-eqz v30, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c00ab

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_6
    sget v30, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    add-int/lit8 v30, v30, -0x3

    add-int v30, v30, v5

    add-int v18, v18, v30

    goto :goto_5

    :cond_12
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/Folder;

    move/from16 v30, v0

    if-eqz v30, :cond_13

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c008e

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_6

    :catch_0
    move-exception v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c008c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_6

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c008c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_6

    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v30, v0

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v30, v0

    mul-int v30, v30, p4

    add-int/lit8 v31, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v29, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v30, v0

    mul-int v30, v30, p5

    add-int/lit8 v31, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v12, v30, v31

    goto/16 :goto_2

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v30, v0

    if-eqz v30, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0f0102

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aget v34, v17, v34

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v30, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-virtual {v0, v1, v8, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method
