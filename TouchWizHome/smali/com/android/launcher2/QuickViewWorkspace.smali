.class public Lcom/android/launcher2/QuickViewWorkspace;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;,
        Lcom/android/launcher2/QuickViewWorkspace$SecretButton;,
        Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;,
        Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;

.field private static final ANIMATED_SCROLL_DURATION:I = 0x258

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field private static final QV_PAGE_SNAP_ANIMATION_DURATION:I = 0x190

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static final ROW_BY_COL_LAYOUT:[[I

.field private static final TAG:Ljava/lang/String; = "QuickViewWorkspace"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I

.field private static sHitRect:Landroid/graphics/Rect;


# instance fields
.field public final MENU_ZONE:I

.field public final PAGE_SNAP_ANIMATION_DURATION:I

.field private QUICK_VIEW_WORKSPACE_DARKEN_AMOUNT:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mConfigurationChangeIsInProgress:Z

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragState:I

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private final mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxDeltaX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollCheck:Z

.field private mScrollDelay:I

.field private mScrollHalfWidth:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

.field private mScrollState:I

.field private mScrollWidth:I

.field mScroller:Landroid/widget/Scroller;

.field private final mSetHomeListener:Landroid/view/View$OnClickListener;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

.field private vDeleteDropLayout:Landroid/view/View;


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

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x680000

    const/high16 v2, -0xe00000

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    return-void

    nop

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

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0e0031

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->MENU_ZONE:I

    iput v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    new-instance v3, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    iput v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    iput v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    new-instance v3, Lcom/android/launcher2/QuickViewWorkspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace$2;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    iput-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v4, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1, v8, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaximumVelocity:I

    const v3, 0x7f050012

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/QuickViewWorkspace$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickViewWorkspace$1;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v3, 0x7f050013

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x168

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->QUICK_VIEW_WORKSPACE_DARKEN_AMOUNT:F

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/QuickViewWorkspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewWorkspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewWorkspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addScreen()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v3

    :goto_0
    if-lt v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v5, v6, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0, v2, v9}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    invoke-virtual {v5, v6, v8, v8}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v5, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f00ad

    invoke-virtual {v5, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto :goto_1

    :cond_5
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->addPage()V

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_2
.end method

.method private enableWorkspaceScreensCache()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getViewLayout(III)V
    .locals 23

    if-lez p1, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

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

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_3

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

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

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

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

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

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

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

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

.method private isDeleteDropTarget(II)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/QuickViewDragBar;->checkOver(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isHome(Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x0

    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private makeScreen(IZ)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    const/16 v12, 0x31

    invoke-direct {v6, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v10, :cond_1

    new-instance v8, Lcom/android/launcher2/QuickViewWorkspace$SecretButton;

    invoke-direct {v8, v4}, Lcom/android/launcher2/QuickViewWorkspace$SecretButton;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    if-nez p2, :cond_0

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    const v10, 0x7f0e001d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v10, 0x7f0e001e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v3, v2, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v10, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v9

    :cond_1
    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;

    invoke-direct {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v11

    sub-int/2addr v10, v11

    if-ne p1, v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v0, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;

    invoke-direct {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v10

    if-ne p1, v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v0, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v10

    add-int/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 7

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I
    invoke-static {v2}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->access$200(Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-lez p1, :cond_0

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    sub-int v0, v2, v1

    if-lez v0, :cond_5

    if-le v0, p1, :cond_4

    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method public cancelDrag()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    return-void
.end method

.method public close(Z)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher2/Launcher;->setCoctailShift(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v1, 0x7f0c01a8

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c01a7

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/Launcher;->setWindowDarkenBackground(ZF)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v2, 0x7f0f001f

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;IIIZ)V

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
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setScrollX(I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setScrollY(I)V

    iget v7, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v1, v7, v2

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_2

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

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method disableWorkspaceScreensCache()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eqz v18, :cond_0

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v15, 0x3f800000

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    sget-boolean v20, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v20

    sub-int v11, v11, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_7

    :cond_3
    if-lez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_a

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_6

    :cond_5
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickView;->mIsWorkspace:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/QuickView;->setOpenStartRect(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v16

    if-eqz v16, :cond_8

    const/high16 v20, 0x3f800000

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v16

    if-eqz v16, :cond_c

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v17

    if-eqz v17, :cond_d

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/QuickView;->setCloseEndRect(I)V

    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v8, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_13

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_12

    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_13

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    const/4 v15, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->invalidate()V

    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/QuickViewWorkspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2b

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v22, v0

    sub-long v9, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v9, v20

    if-ltz v20, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    :cond_1a
    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    :goto_6
    const/high16 v15, 0x3f800000

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_1c

    :cond_1b
    if-lez v8, :cond_1c

    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-nez v20, :cond_25

    const-string v20, "QuickViewWorkspace"

    const-string v21, "Failed to get current rectangles from animation engine"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    const/high16 v15, 0x3f800000

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v17

    if-eqz v17, :cond_20

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->QUICK_VIEW_WORKSPACE_DARKEN_AMOUNT:F

    move/from16 v20, v0

    mul-float v15, v15, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->QUICK_VIEW_WORKSPACE_DARKEN_AMOUNT:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->QUICK_VIEW_WORKSPACE_DARKEN_AMOUNT:F

    move/from16 v21, v0

    mul-float v21, v21, v15

    sub-float v15, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    :cond_23
    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto/16 :goto_6

    :cond_24
    long-to-float v0, v9

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    goto/16 :goto_7

    :cond_25
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v8, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v20

    if-eqz v20, :cond_28

    float-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L

    cmpg-double v20, v20, v22

    if-gez v20, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_27

    :cond_26
    float-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L

    cmpl-double v20, v20, v22

    if-lez v20, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    :cond_27
    if-ne v13, v11, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_28
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    :cond_29
    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_2a

    if-eq v13, v11, :cond_2a

    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_28

    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto :goto_9

    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move/from16 v20, v0

    if-eqz v20, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollHalfWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move/from16 v21, v0

    div-int v11, v20, v21

    :cond_2c
    const/4 v13, 0x0

    :goto_a
    if-ge v13, v8, :cond_15

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_2d

    if-eq v13, v11, :cond_2d

    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_2e
    add-int/lit8 v13, v13, 0x1

    goto :goto_a
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 32

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000

    div-float v9, v28, v29

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000

    div-float v8, v28, v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v25, v28, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v26, v28, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v28, 0x7f0e001f

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/QuickViewWorkspace;->isHome(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    sget-object v28, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v28, 0x80

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_1
    sget v28, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const v29, 0x3ca3d70a

    add-float v28, v28, v29

    const v29, 0x3f933333

    cmpg-float v28, v28, v29

    if-gez v28, :cond_5

    sget v28, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const v29, 0x3ca3d70a

    add-float v18, v28, v29

    :goto_2
    sput v18, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v9

    move/from16 v28, v0

    neg-float v0, v8

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v7, v0

    int-to-float v0, v7

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v15, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    move v3, v15

    :goto_4
    const/16 v28, 0x0

    const/high16 v29, 0x3f800000

    move/from16 v0, v29

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    const/high16 v3, 0x3f800000

    :cond_0
    const/high16 v28, 0x437f0000

    mul-float v28, v28, v3

    move/from16 v0, v28

    float-to-int v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    sget-object v28, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v28, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-interface/range {v28 .. v29}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v12

    const/high16 v28, 0x3f800000

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FF)V

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v28, p2

    check-cast v28, Landroid/view/ViewGroup;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v11, v28, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v28, v24, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v14

    move/from16 v29, v0

    div-float v19, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v23, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v11

    sub-float v28, v28, v29

    int-to-float v0, v13

    move/from16 v29, v0

    div-float v20, v28, v29

    cmpl-float v28, v20, v19

    if-lez v28, :cond_8

    move/from16 v17, v19

    :goto_5
    mul-float v17, v17, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000

    div-float v28, v28, v29

    add-float v28, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    const/high16 v30, 0x40000000

    div-float v29, v29, v30

    add-float v29, v29, v26

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v0, v14

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000

    div-float v28, v28, v29

    neg-int v0, v13

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000

    div-float v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    const/16 v21, 0x1

    :goto_6
    if-eqz v21, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v9

    move/from16 v28, v0

    neg-float v0, v8

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_7
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_4
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    :cond_5
    const v18, 0x3f933333

    goto/16 :goto_2

    :cond_6
    const/high16 v18, 0x3f800000

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_7
    const/high16 v28, 0x3f800000

    sub-float v3, v28, v15

    goto/16 :goto_4

    :cond_8
    move/from16 v17, v20

    goto/16 :goto_5

    :cond_9
    const/16 v21, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v28, v27, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v9, v28

    div-int/lit8 v29, v10, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v8, v29

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7
.end method

.method public drawCloseAnimation()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const/high16 v4, 0x3f800000

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/Launcher;->setWindowDarkenBackground(ZF)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v4, 0x7f0c01a8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0c01a7

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PagedView;->updateIndicatorWidth(Z)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->wallpaperHack()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move v1, v2

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v3, 0x7f0c01a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0c01a7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView;->updateIndicatorWidth(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawOpenAnimation()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PagedView;->updateIndicatorWidth(Z)V

    goto :goto_0
.end method

.method protected drop(II)V
    .locals 8

    const/16 v7, 0x6457

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewDragBar;->onDrop()V

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    iget v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2, v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->showDeleteWorkScreen()V

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v7, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->isValidTag(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    :goto_2
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f0f00d8

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v7, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_2
.end method

.method protected endDrag()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    goto :goto_0
.end method

.method public exitDrakenView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public getCheckedIndex()I
    .locals 5

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDeletePageIndex()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

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

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

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

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_3
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    :cond_0
    move-object/from16 v13, p1

    check-cast v13, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v8

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    iget-object v3, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v13, :cond_4

    move v8, v10

    :goto_0
    const-string v13, "QuickViewWorkspace"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initScreen() screenCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " secretMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mIsSecretQuickView = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v13, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v13, :cond_3

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v13

    sub-int/2addr v8, v13

    const-string v13, "QuickViewWorkspace"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initScreen() festival screenCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0200be

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    # getter for: Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->access$000()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v13, Landroid/widget/Scroller;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v2, v14, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0f001f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v4, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr v8, v10

    goto/16 :goto_0

    :cond_5
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v13

    if-ge v9, v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    sget-boolean v13, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v13, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v13

    if-nez v13, :cond_8

    const v13, 0x7f0c0072

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :goto_3
    const v13, 0x7f0c01b1

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const v13, 0x7f0c01ae

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateWidgetButtonState()V

    return-void

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v13

    if-ge v8, v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    goto :goto_2

    :cond_8
    const v13, 0x7f0c01b2

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_3
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

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

    iput v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

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

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

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

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isDeleteWorkScreenPopup()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTargetPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->addScreen()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    iget-object v2, v10, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v3, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getTouchState()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x7f0c006e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/launcher2/PagedView;->setPageIndicatorTop(I)V

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    if-nez v10, :cond_3

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/launcher2/QuickViewWorkspace$4;

    invoke-direct {v11, p0}, Lcom/android/launcher2/QuickViewWorkspace$4;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01b4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    const v10, 0x7f0c0241

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v0, v12}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v11, 0x258

    if-ge v10, v11, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v11, 0x7f0c01a9

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0c01a7

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v3}, Lcom/android/launcher2/PagedView;->updateIndicatorWidth(Z)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    iget-object v10, v10, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v10

    if-nez v10, :cond_b

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x1

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v10, 0x15

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v3, :cond_c

    check-cast v9, Lcom/android/launcher2/QuickViewDragBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    :cond_8
    :goto_5
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    if-nez v10, :cond_9

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    :cond_9
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/launcher2/QuickViewWorkspace$5;

    invoke-direct {v11, p0}, Lcom/android/launcher2/QuickViewWorkspace$5;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v0, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_b
    const/4 v10, -0x1

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v10, 0x31

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    :cond_c
    check-cast v9, Lcom/android/launcher2/QuickViewDragBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    goto :goto_5
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_0
    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_1
    cmpl-float v3, v1, v4

    if-nez v3, :cond_1

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    :cond_1
    iget v3, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ne v0, v3, :cond_3

    cmpl-float v3, v1, v4

    if-gtz v3, :cond_2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    :cond_2
    iget v3, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
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

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

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

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_0

    :sswitch_0
    sget-boolean v13, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v14, "add_widgets"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v14, "change_wallpaper"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

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

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v13, v14, :cond_1

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

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    sub-float/2addr v13, v6

    float-to-int v8, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v5, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v13, :cond_4

    if-eqz v10, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->acquire()V

    :cond_6
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->getFinalX()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrX()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->isFinished()Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    if-ge v9, v13, :cond_8

    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    :cond_8
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

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

    :cond_a
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

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->measureChildViews()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickView;->updateParamsIfNeeded(Z)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

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

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-eq v13, v6, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_7

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-ge v8, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    new-array v13, v6, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

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

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollHalfWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c022f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

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

    sget-object v13, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    sget-object v13, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

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

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    add-int v9, v13, v14

    if-le v9, v12, :cond_11

    sub-int v13, v9, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v13, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v13

    sub-int/2addr v7, v13

    :cond_e
    sget-boolean v13, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v13, :cond_f

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v13, :cond_f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v13

    if-lt v7, v13, :cond_f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v7

    :cond_f
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setScrollX(I)V

    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setScrollX(I)V

    goto/16 :goto_1

    :cond_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    goto :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

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

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimStateOkayForClickEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

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

    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    iput p2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    return-void
.end method

.method public onPinchOut()Z
    .locals 3

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->computeScroll()V

    goto :goto_1

    :pswitch_1
    sget-boolean v12, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v12, :cond_3

    const-string v12, "add_widgets"

    sget-object v13, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "change_wallpaper"

    sget-object v13, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    sub-float/2addr v12, v9

    float-to-int v2, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v12, v11

    float-to-int v3, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    if-le v12, v13, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v12, :cond_4

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    sub-int v16, v16, v3

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_7
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    float-to-int v12, v9

    float-to-int v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_8

    sget-object v12, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v13, 0x7f0f0089

    invoke-virtual {v12, v13}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x5695

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_8
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    :cond_a
    float-to-int v12, v9

    float-to-int v13, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v4

    const/4 v12, -0x1

    if-eq v4, v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-eq v4, v12, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v12, v13, :cond_b

    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-ge v12, v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToRight()V

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-le v12, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToLeft()V

    goto/16 :goto_1

    :cond_d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    float-to-int v5, v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTargetPage()Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMinimumVelocity:I

    if-le v12, v13, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ne v1, v12, :cond_e

    if-lez v5, :cond_15

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    :cond_10
    :goto_5
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v13, :cond_11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    float-to-int v12, v9

    float-to-int v13, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drop(II)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v12, :cond_13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCheckedIndex()I

    move-result v12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v13

    if-eq v12, v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateHomeScreenOnDrag()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v12}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    :cond_15
    if-gez v5, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Lcom/android/launcher2/PageIndicatorManager;->snapPageTouchArea(FF)I

    move-result v6

    const/4 v12, -0x1

    if-le v6, v12, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

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
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedView;->setPageIndicatorTop(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :cond_3
    :goto_2
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f0f000f

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/Launcher;->setWindowDarkenBackground(ZF)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/launcher2/Launcher;->setCoctailShift(ZZ)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gt v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_1

    :cond_7
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_2
.end method

.method refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public removeNormalScreen()V
    .locals 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v1, v10, :cond_0

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v12, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v12, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    add-int v0, v9, v8

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-gt v0, v9, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v9

    if-lt v5, v9, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    move-object v9, v7

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v9, v10, :cond_3

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v9, v2, Landroid/widget/CompoundButton;

    if-eqz v9, :cond_3

    check-cast v2, Landroid/widget/CompoundButton;

    sub-int v9, v5, v8

    if-ne v4, v9, :cond_4

    move v9, v10

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v9, v11

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    const v12, 0x7f0f00e8

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v9

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    return-void
.end method

.method public removeScreen()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    :cond_0
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->removeSecretScreen()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/launcher2/QuickViewDragBar;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->removeNormalScreen()V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    const v20, 0x7f0f00e8

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v4, v0, :cond_6

    add-int/lit8 v18, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/launcher2/QuickViewDragBar;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    :cond_8
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v11, v12}, Ljava/util/Date;-><init>(J)V

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    const-string v18, "com.sec.android.app.launcher.prefs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v18, "quickviewDeletePage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", time : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    instance-of v0, v14, Landroid/view/ViewGroup;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v14

    check-cast v18, Landroid/view/ViewGroup;

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    if-lez v18, :cond_a

    check-cast v14, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v0, v7, Landroid/widget/CompoundButton;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    check-cast v7, Landroid/widget/CompoundButton;

    if-ne v9, v10, :cond_b

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/android/launcher2/QuickViewWorkspace$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$3;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v19, 0x64

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    goto :goto_4
.end method

.method public removeSecretScreen()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    return-void
.end method

.method public scrollLeft()V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    neg-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "QuickViewWorkspace"

    const-string v1, "ignore scroll right to add btn page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

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

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    iput v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    return-void
.end method

.method public scrollToRight()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    return-void
.end method

.method public setDeletePageIndex(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    return-void
.end method

.method public setQvPage(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    add-int/2addr p1, v1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1, p1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setPage(I)V

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/16 v5, 0x258

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

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
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    aget v3, v6, v4

    iget v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v3, v5

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->startDrag(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected swapScreen(I)V
    .locals 4

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    add-int/2addr v2, v0

    add-int v3, p1, v0

    invoke-interface {v1, v2, v3}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-interface {v1, v2, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    goto :goto_0
.end method

.method public updateHomeScreenOnDrag()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    sub-int/2addr v3, v6

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v6, v7, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Landroid/widget/CompoundButton;

    if-eqz v6, :cond_1

    check-cast v0, Landroid/widget/CompoundButton;

    if-ne v2, v3, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected updateTags()V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v5, v10, :cond_1

    move v6, v8

    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v10

    if-ne v10, v1, :cond_2

    if-nez v6, :cond_2

    move v2, v1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v7, v10, :cond_0

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v10

    add-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0f001f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v6, v9

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public updateWidgetButtonState()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getWidgetButton()Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x1

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/QuickView;->mIsSecretQuickView:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->hasSecretWidget()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    const/high16 v3, 0x3f000000

    goto :goto_0
.end method
