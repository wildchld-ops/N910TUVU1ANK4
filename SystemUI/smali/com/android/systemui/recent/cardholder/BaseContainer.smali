.class public abstract Lcom/android/systemui/recent/cardholder/BaseContainer;
.super Landroid/widget/RelativeLayout;
.source "BaseContainer.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;,
        Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;
    }
.end annotation


# static fields
.field protected static BOTTOM_STACK_BORDER:F = 0.0f

.field protected static CLOSE_ANIMATION:I = 0x0

.field private static final DEBUG:Z = true

.field protected static MAX_STACK_APPS:I = 0x0

.field protected static ROTATE_SPEED:F = 0.0f

.field protected static SHADOW_ANIMATION_DURATION:I = 0x0

.field protected static STACK_ANIMATION_DURATION:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "BaseContainer"

.field protected static TOP_STACK_Z_DIFF:F = 0.0f

.field static final TYPE_SCROLL:I = 0x1

.field static final TYPE_SLIDE:I

.field protected static Z_DIFF:F

.field protected static mAnimationScrollStep:I

.field protected static mAnimationScrollStepForSizeOne:I

.field protected static mBeginRotateDownDistance:F

.field protected static mBeginRotateUpDistance:F

.field protected static mBottomStackVisiblePart:F

.field protected static mMaxRotateAngle:I

.field protected static mTopStackDistance:F

.field protected static mTopStackStartPosition:F


# instance fields
.field private Z_ANIMATION_DURATION:J

.field animators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field bottomStackIndex:I

.field doMove:Z

.field dx:F

.field dy:F

.field gd:Landroid/view/GestureDetector;

.field mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

.field private mBeginRotateUpDistanceAsViewCount:F

.field protected mBottomStackReleaseDistance:F

.field private mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;

.field private mChildDismissDimLayerAnimating:Z

.field private mChildDismissScrollAnimating:Z

.field mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field protected mDistanceBetweenTopStackpos:F

.field protected mFingerOnDisplay:Z

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field public mOrientation:I

.field private mPagingTouchSlop:I

.field private mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

.field mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected mScrolling:Z

.field private mShadowHeight:F

.field mShadowInterpolator:Landroid/view/animation/Interpolator;

.field private mSkipCacheSave:Z

.field private mStackChange:Ljava/lang/Object;

.field protected mSwipe:Z

.field protected mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mTopStackMovingDistanceFactor:F

.field protected mTopStackReleaseDistance:F

.field mover:Ljava/lang/Runnable;

.field rotated_angle:F

.field rotation_restorer:Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

.field scroll_type:I

.field scroller:Landroid/widget/Scroller;

.field should_clean_rotation:Z

.field should_send_cancel:Z

.field protected target:Landroid/view/View;

.field topStackIndex:I

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc8

    const v0, 0x3e99999a

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->ROTATE_SPEED:F

    sput v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->STACK_ANIMATION_DURATION:I

    sput v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->CLOSE_ANIMATION:I

    const/16 v0, 0x12

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->MAX_STACK_APPS:I

    const v0, 0x3dae147b

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->Z_DIFF:F

    const v0, 0x3ca3d70a

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->TOP_STACK_Z_DIFF:F

    const/16 v0, 0x12c

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->SHADOW_ANIMATION_DURATION:I

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->BOTTOM_STACK_BORDER:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x3fc00000

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->Z_ANIMATION_DURATION:J

    const/high16 v0, 0x435c0000

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackReleaseDistance:F

    const v0, 0x43fd8000

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBottomStackReleaseDistance:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDistanceBetweenTopStackpos:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackMovingDistanceFactor:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mShadowHeight:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->dx:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->dy:F

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->doMove:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->target:Landroid/view/View;

    iput v5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroll_type:I

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->should_send_cancel:Z

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->should_clean_rotation:Z

    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->animators:Ljava/util/HashMap;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mStackChange:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSkipCacheSave:Z

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissDimLayerAnimating:Z

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z

    new-instance v0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

    new-instance v0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/cardholder/BaseContainer$3;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mover:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBottomStackVisiblePart:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mMaxRotateAngle:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateDownDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPagingTouchSlop:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBottomStackReleaseDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackReleaseDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAnimationScrollStep:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAnimationScrollStepForSizeOne:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackMovingDistanceFactor:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mShadowHeight:F

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayWidth:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayHeight:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/cardholder/BaseContainer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/cardholder/BaseContainer$1;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->gd:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/cardholder/BaseContainer;)Lcom/android/systemui/recent/cardholder/RecentsCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissDimLayerAnimating:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissDimLayerAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/cardholder/BaseContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPagingTouchSlop:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSkipCacheSave:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSkipCacheSave:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getViewData()Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recent/cardholder/ViewCacheData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const v0, 0x7f080021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v0, 0x7f08001d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v6

    new-instance v0, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;-><init>(IFFFFI)V

    invoke-virtual {v12, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v12
.end method

.method private scrollDown(I)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getViewData()Landroid/util/SparseArray;

    move-result-object v15

    add-int/lit8 v7, p1, -0x1

    :goto_0
    if-ltz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const v16, 0x7f080021

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v16, 0x7f08001d

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    add-int/lit8 v16, v7, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v14}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    :cond_1
    invoke-virtual {v14}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getShadowVisibility()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v14}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v19

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v16, Lcom/android/systemui/recent/cardholder/BaseContainer$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$11;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    sget-object v16, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v14}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v19

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v14}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v19

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    sget-object v16, Landroid/view/View;->Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v14}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v19

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    const/16 v17, 0x2

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v16, Lcom/android/systemui/recent/cardholder/BaseContainer$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$12;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz v5, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0
.end method

.method private scrollUp(I)V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getViewData()Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    add-int/lit8 v8, p1, 0x1

    :goto_0
    if-gt v8, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const v18, 0x7f080021

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v18, 0x7f08001d

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    add-int/lit8 v18, v8, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDisplayHeight:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v18

    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v14}, Landroid/view/View;->clearAnimation()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    const/4 v6, 0x1

    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    :cond_1
    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getShadowVisibility()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v21

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v18, Lcom/android/systemui/recent/cardholder/BaseContainer$13;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$13;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v21

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v21

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    sget-object v18, Landroid/view/View;->Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v15}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v21

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v18, Lcom/android/systemui/recent/cardholder/BaseContainer$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$14;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz v6, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0

    return-void
.end method

.method private shouldReleaseFromBottomStack()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBottomStackReleaseDistance:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private update()V
    .locals 22

    const-string v20, "BaseContainer"

    const-string v21, "update()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    const/4 v13, 0x0

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v7, v13, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    new-instance v12, Lcom/android/systemui/recent/cardholder/BaseContainer$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer$4;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    new-instance v8, Lcom/android/systemui/recent/cardholder/BaseContainer$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$5;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v0, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    new-instance v9, Lcom/android/systemui/recent/cardholder/BaseContainer$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v9, v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer$6;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;Landroid/view/View;)V

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v20, 0x7f08001f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v20, 0x7f08001e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v15, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v20, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setFocusable(Z)V

    new-instance v20, Lcom/android/systemui/recent/cardholder/BaseContainer$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$7;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v20, Lcom/android/systemui/recent/cardholder/BaseContainer$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer$8;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v20, 0x7f080011

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mSupportCloseButtonOnRecentPanel:Z

    if-eqz v20, :cond_5

    const v20, 0x7f080008

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    new-instance v20, Lcom/android/systemui/recent/cardholder/BaseContainer$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer$9;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    const v20, 0x7f080021

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_5
    const v20, 0x7f080020

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v20, Lcom/android/systemui/recent/cardholder/BaseContainer$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer$10;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    invoke-super {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v4, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissDimLayerAnimating:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    if-ge v2, v6, :cond_1

    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method protected createBottomStackInAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/high16 v1, 0x3f800000

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected abstract createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;
.end method

.method protected createBottomStackOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/high16 v1, 0x3f800000

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createDisappearAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 2

    const/high16 v1, 0x3f800000

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createTopStackInAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/high16 v1, 0x3f800000

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createTopStackOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/high16 v1, 0x3f800000

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrolling:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipe:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipe:Z

    :cond_2
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrolling:Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrolling:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_5
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrolling:Z

    iput-boolean v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mFingerOnDisplay:Z

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipe:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_7

    iput-boolean v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipe:Z

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method doScroll(F)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(FI)Z

    move-result v0

    return v0
.end method

.method doScroll(FI)Z
    .locals 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mStackChange:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35

    const/4 v4, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v34

    const/high16 v36, 0x43480000

    cmpl-float v34, v34, v36

    if-lez v34, :cond_0

    const/16 v34, 0x0

    cmpg-float v34, p1, v34

    if-gez v34, :cond_1

    const/high16 p1, -0x3cb80000

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_2

    const-string v34, "BaseContainer"

    const-string v36, "finish scroll"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit v35

    :goto_1
    return v34

    :cond_1
    const/high16 p1, 0x43480000

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_7

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_7

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v34, v34, v36

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    :cond_3
    :goto_2
    const/16 v34, 0x0

    cmpl-float v34, p1, v34

    if-lez v34, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    move/from16 v34, v0

    const/16 v36, 0x0

    cmpl-float v34, v34, v36

    if-lez v34, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->should_clean_rotation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->should_clean_rotation:Z

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    const/16 v36, -0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v21, v34, v36

    const/high16 v34, 0x3f800000

    const/high16 v36, 0x40200000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v37

    mul-float v36, v36, v37

    add-float v10, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    mul-float v36, p1, v10

    add-float v34, v34, v36

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateDownDistance:F

    const/high16 v37, 0x3f800000

    add-float v36, v36, v37

    cmpl-float v34, v34, v36

    if-lez v34, :cond_5

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateDownDistance:F

    const/high16 v36, 0x3f800000

    add-float v34, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v36

    sub-float v34, v34, v36

    div-float p1, v34, v10

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v27, v34, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    const/16 v34, -0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-eq v0, v1, :cond_6

    const/16 v34, 0x0

    cmpg-float v34, p1, v34

    if-gez v34, :cond_13

    move/from16 v27, p2

    :cond_6
    :goto_5
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getScaleX()F

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v21, v34, v36

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getInterpolationForScale(F)F

    move-result v23

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_7
    if-lez v33, :cond_3

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_3

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v36, 0x40400000

    mul-float v34, v34, v36

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    goto/16 :goto_2

    :catchall_0
    move-exception v34

    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v34

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    const/16 v36, -0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateDownDistance:F

    cmpl-float v34, v34, v36

    if-lez v34, :cond_9

    const/16 v34, 0x0

    monitor-exit v35

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->shouldReleaseFromTopStack()Z

    move-result v34

    if-eqz v34, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->createTopStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    const/16 v36, -0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_a

    const-string v34, "BaseContainer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "ReleaseFromTopStack - Wrong topStackIndex : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    const/16 v36, -0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->optShow(Landroid/view/View;)V

    :cond_b
    sget-boolean v34, Lcom/android/systemui/statusbar/Feature;->mSupportCloseButtonOnRecentPanel:Z

    if-nez v34, :cond_c

    const v34, 0x7f080020

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_c
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    :cond_d
    const/16 v34, 0x0

    cmpg-float v34, p1, v34

    if-gez v34, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    move/from16 v34, v0

    const/16 v36, 0x0

    cmpg-float v34, v34, v36

    if-gez v34, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->should_clean_rotation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_f

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->should_clean_rotation:Z

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v21, v34, v36

    const/high16 v34, 0x3f800000

    const/high16 v36, 0x40200000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v37

    mul-float v36, v36, v37

    add-float v10, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    mul-float v36, p1, v10

    add-float v34, v34, v36

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v37, 0x3f800000

    sub-float v36, v36, v37

    cmpg-float v34, v34, v36

    if-gez v34, :cond_5

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v36, 0x3f800000

    sub-float v34, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v36

    sub-float v34, v34, v36

    div-float p1, v34, v10

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    move/from16 v36, v0

    cmpg-float v34, v34, v36

    if-gez v34, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    if-gez v34, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    :cond_10
    const/16 v34, 0x0

    monitor-exit v35

    goto/16 :goto_1

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->shouldReleaseFromBottomStack()Z

    move-result v34

    if-eqz v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->optShow(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->createBottomStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    :cond_12
    const/16 v34, 0x1

    monitor-exit v35

    goto/16 :goto_1

    :cond_13
    move/from16 v7, p2

    move/from16 v0, v27

    if-ne v0, v7, :cond_6

    if-lez v27, :cond_6

    add-int/lit8 v27, v27, -0x1

    goto/16 :goto_5

    :cond_14
    move/from16 v13, v27

    :goto_8
    if-ge v13, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/high16 v18, 0x3fc00000

    const/high16 v14, 0x40200000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mOrientation:I

    move/from16 v34, v0

    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    const/high16 v36, 0x42480000

    add-float v34, v34, v36

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    div-float v18, v34, v36

    const/high16 v14, 0x40b00000

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v21, v34, v36

    const/high16 v34, 0x3f800000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v36

    mul-float v36, v36, v14

    add-float v34, v34, v36

    mul-float v16, p1, v34

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    const/16 v36, 0x3

    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    if-ne v13, v0, :cond_17

    const/16 v34, 0x0

    cmpg-float v34, v16, v34

    if-gez v34, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    add-float v34, v34, v16

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v37, 0x40400000

    mul-float v36, v36, v37

    cmpg-float v34, v34, v36

    if-gez v34, :cond_17

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v36, 0x40400000

    mul-float v34, v34, v36

    const/high16 v36, 0x3f800000

    sub-float v34, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    const/16 v20, 0x1

    :goto_9
    if-nez v4, :cond_16

    if-eqz v20, :cond_1c

    :cond_16
    const/4 v4, 0x1

    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x2

    move/from16 v0, v34

    if-ne v13, v0, :cond_18

    const/16 v34, 0x0

    cmpg-float v34, v16, v34

    if-gez v34, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    add-float v34, v34, v16

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    mul-float v36, v36, v18

    cmpg-float v34, v34, v36

    if-gez v34, :cond_18

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    mul-float v34, v34, v18

    const/high16 v36, 0x3f800000

    sub-float v34, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    const/16 v20, 0x1

    goto :goto_9

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    move-result v20

    goto :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    if-ne v13, v0, :cond_1a

    const/16 v34, 0x0

    cmpg-float v34, v16, v34

    if-gez v34, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    add-float v34, v34, v16

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    mul-float v36, v36, v18

    cmpg-float v34, v34, v36

    if-gez v34, :cond_1a

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    mul-float v34, v34, v18

    const/high16 v36, 0x3f800000

    sub-float v34, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    const/16 v20, 0x1

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    move-result v20

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    move-result v20

    goto/16 :goto_9

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_1d
    const/16 v34, -0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    cmpg-float v34, v34, v36

    if-gtz v34, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    if-lez v34, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->optHide(Landroid/view/View;)V

    :cond_1e
    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    sub-float v34, v34, v36

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDistanceBetweenTopStackpos:F

    :cond_1f
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    if-ltz v34, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sget v37, Lcom/android/systemui/recent/cardholder/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float v36, v36, v37

    cmpl-float v34, v34, v36

    if-lez v34, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float v34, v34, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->createBottomStackInAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    new-instance v34, Lcom/android/systemui/recent/cardholder/BaseContainer$2;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer$2;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDistanceBetweenTopStackpos:F

    move/from16 v34, v0

    const/16 v36, 0x0

    cmpl-float v34, v34, v36

    if-nez v34, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackReleaseDistance:F

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDistanceBetweenTopStackpos:F

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v34, v0

    const/16 v36, -0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-le v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v34

    sget v36, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    sub-float v6, v34, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mDistanceBetweenTopStackpos:F

    move/from16 v34, v0

    div-float v19, v6, v34

    const/high16 v34, 0x3f800000

    cmpl-float v34, v19, v34

    if-lez v34, :cond_22

    const/high16 v19, 0x3f800000

    :cond_22
    const/high16 v34, 0x3f800000

    sub-float v19, v34, v19

    const/high16 v15, 0x40000000

    move v8, v15

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    :goto_c
    if-ltz v13, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-nez v13, :cond_23

    const/4 v11, 0x1

    :cond_23
    const/16 v34, 0x0

    cmpg-float v34, v8, v34

    if-gez v34, :cond_27

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x1

    :cond_24
    :goto_d
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getScaleY()F

    move-result v23

    const/high16 v34, 0x3f800000

    sub-float v36, v15, v8

    add-float v36, v36, v19

    const/high16 v37, 0x42c80000

    div-float v36, v36, v37

    sub-float v9, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v0, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v34

    mul-float v23, v23, v34

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackMovingDistanceFactor:F

    move/from16 v34, v0

    div-float v36, v8, v15

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getInterpolationForTransition(F)F

    move-result v36

    mul-float v30, v34, v36

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v34, v0

    mul-float v36, v30, v19

    sub-float v17, v34, v36

    add-float v29, v29, v30

    sget v34, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    add-float v34, v34, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    if-eqz v12, :cond_29

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v34

    if-nez v34, :cond_25

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    const/16 v34, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    :goto_e
    const v34, 0x7f08001d

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v11, :cond_2a

    const/16 v34, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    const/high16 v34, 0x3f800000

    sub-float v8, v8, v34

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_c

    :cond_26
    const-string v34, "BaseContainer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "OutOfBoundsException : Invalid index "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", size is "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_27
    const/high16 v34, 0x3f800000

    cmpg-float v34, v8, v34

    if-gez v34, :cond_28

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_28
    const/high16 v34, 0x3f800000

    cmpl-float v34, v8, v34

    if-nez v34, :cond_24

    add-int/lit8 v34, v13, -0x1

    if-ltz v34, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    add-int/lit8 v36, v13, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    if-eqz v28, :cond_24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getY()F

    move-result v34

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getY()F

    move-result v36

    sub-float v34, v34, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mShadowHeight:F

    move/from16 v36, v0

    cmpg-float v34, v34, v36

    if-gez v34, :cond_24

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_29
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v34, 0x7f080021

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sub-float v34, v15, v8

    add-float v34, v34, v19

    const/high16 v36, 0x3e800000

    mul-float v3, v34, v36

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_e

    :cond_2a
    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_2b
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v34, v4

    goto/16 :goto_1
.end method

.method doSlideOut(Landroid/view/View;F)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getSlidePosition(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setSlidePosition(Landroid/view/View;F)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getSlidePosition(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    iget v13, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int v2, v0, v13

    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v12}, Landroid/view/View;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0, v12}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Landroid/view/View;->mScrollX:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v9

    move-object v1, p1

    move v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    :cond_2
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f08001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getInterpolationForScale(F)F
    .locals 3

    const/high16 v1, 0x41c80000

    mul-float/2addr v1, p1

    const/high16 v2, 0x42820000

    add-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f933333

    mul-float/2addr v1, v2

    return v1
.end method

.method public getInterpolationForTransition(F)F
    .locals 3

    const/high16 v1, 0x42b40000

    mul-float v0, v1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public getNextChild(I)Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    if-gez v1, :cond_1

    if-ge p1, v0, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    if-lt p1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method protected abstract getScrollDistance(FF)F
.end method

.method protected abstract getScrollPosition(Landroid/view/View;)F
.end method

.method protected abstract getScrollSize()I
.end method

.method protected abstract getScrollVelocity(FF)F
.end method

.method protected abstract getSlideDistance(FF)F
.end method

.method protected abstract getSlidePosition(Landroid/view/View;)F
.end method

.method protected abstract getSlideVelocity(FF)F
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public loadValues()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateDownDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackMovingDistanceFactor:F

    return-void
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/cardholder/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipe:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x4

    iget-object v7, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mStackChange:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    if-ge v1, v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    iget v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    if-gt v1, v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    iget v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    const/4 v8, -0x1

    if-ge v6, v8, :cond_1

    const-string v6, "BaseContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onChildDismissed - Wrong topStackIndex : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BaseContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onChildDismissed - dismiss view index : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getViewData()Landroid/util/SparseArray;

    move-result-object v5

    if-lez v4, :cond_4

    const/4 v6, 0x3

    if-gt v4, v6, :cond_4

    sget v6, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    :cond_2
    :goto_1
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    if-ne v1, v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->scrollDown(I)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->scrollUp(I)V

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;

    invoke-interface {v6, p1}, Lcom/android/systemui/recent/cardholder/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_4
    if-lez v4, :cond_2

    if-lt v4, v10, :cond_2

    :try_start_1
    sget v6, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v8, 0x40400000

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mBeginRotateUpDistanceAsViewCount:F

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->scrollUp(I)V

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->scrollDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setOverScrollEffectPadding(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const-string v0, "BaseContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTasksLoaded()V
    .locals 12

    const/4 v4, 0x0

    const/4 v2, -0x1

    const-string v0, "BaseContainer"

    const-string v1, "onTasksLoaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mOrientation:I

    if-eq v0, v8, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSkipCacheSave:Z

    const/4 v6, 0x0

    iput v8, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->loadValues()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    const/4 v10, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollSize()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v11, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    const v0, 0x7f080021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/cardholder/BaseContainer;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v7

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    new-instance v0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;

    sget v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackStartPosition:F

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;IFIZZ)V

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->run()V

    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const/high16 v0, 0x3f800000

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    new-instance v0, Lcom/android/systemui/recent/cardholder/BaseContainer$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/cardholder/BaseContainer$15;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract optHide(Landroid/view/View;)V
.end method

.method protected abstract optShow(Landroid/view/View;)V
.end method

.method public removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->dismissChild(Landroid/view/View;)V

    return-void
.end method

.method restoreRotation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->init()Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v1, Lcom/android/systemui/recent/cardholder/BaseContainer$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/cardholder/BaseContainer$16;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mNumItemsInOneScreenful:I

    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/cardholder/RecentsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0

    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    return-void
.end method

.method setNewPosition(Landroid/view/View;F)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    return v0
.end method

.method protected abstract setRotation(Landroid/view/View;F)V
.end method

.method protected abstract setScrollPosition(Landroid/view/View;F)V
.end method

.method protected abstract setSlidePosition(Landroid/view/View;F)V
.end method

.method protected shouldReleaseFromTopStack()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    if-gez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mTopStackReleaseDistance:F

    add-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected stopAnimators(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
