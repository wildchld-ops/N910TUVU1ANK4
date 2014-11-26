.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CellLayoutContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$24;,
        Lcom/android/launcher2/Workspace$CellOrient;,
        Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;,
        Lcom/android/launcher2/Workspace$StateChangeRunnable;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$StateAnimatorProvider;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$BindWidgetsState;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final DEBUG_WP:Z = false

.field private static final DEBUG_WP_TAG:Ljava/lang/String; = "Launcher.WS.DebugWp"

.field private static final FAST_ROTATION:F = 15.0f

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final SLOW_ROTATION:F = 20.0f

.field private static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static STATE_CHANGE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field private static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_ROTATION:F = 20.0f

.field static final kPageZoomScaleLimit:F = 0.8f

.field private static mSineIO70Interpolator:Landroid/view/animation/Interpolator;

.field private static mSineIO80Interpolator:Landroid/view/animation/Interpolator;

.field static final sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field public static sPanelBaseEditDarkenAmount:F

.field public static widgetSizeChanged:Z


# instance fields
.field private WIDGET_BINDER:Ljava/lang/Runnable;

.field private isStartDragStarted:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackgroundDarken:F

.field private mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

.field private mCreatedPageForDragViewIndex:I

.field private mCurrentOrientation:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragBarSize:I

.field private mDragFromMenu:Z

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mEditModePanel_left_Adjust:I

.field private mEditModePanel_top_Adjust:I

.field private mEditModeShrinkFactor:F

.field private mExitResizeDueToNewDrag:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFastScrollDrawInward:F

.field private mFixedWallpaper:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field final mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

.field final mHelpStartNowImage:[Landroid/widget/ImageView;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mInScrollArea:Z

.field private mInterceptedTouchEvent:Z

.field private mIsDragOccuring:Z

.field public mIsHelpOrientationChanged:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMultiTouchUsed:Z

.field private mNormalScrollDrawInward:F

.field private mOldState:Lcom/android/launcher2/Workspace$State;

.field private mPageIndicatorTopShrunken:I

.field mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

.field public mPendingSnapToPageIndex:I

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mRequestedOrientation:I

.field private mShrinkTranslateX:F

.field private mShrinkTranslateY:F

.field protected mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Workspace$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStateAfterFirstLayout:Z

.field private mTempCell:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTouchPointDistance:I

.field private mUpdateWallpaperOffsetImmediately:Z

.field private mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperTravelWidth:I

.field private mWallpaperWidth:I

.field private mWidgetSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Workspace;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    const/high16 v0, 0x3f000000

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    const/high16 v0, 0x40c00000

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    new-instance v0, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    iput v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    iput v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    new-array v3, v5, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    new-array v3, v5, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    iput v6, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    const v3, 0x3ee66666

    iput v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    const v3, 0x3e4ccccd

    iput v3, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    iput v6, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    new-instance v3, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    new-instance v3, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    new-instance v3, Lcom/android/launcher2/Workspace$22;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$22;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDataIsReady()V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {p1}, Lcom/sec/dtl/launcher/GyroForShadow;->initialize(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SmallestWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ScreenSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DensityDpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    const v3, 0x7f0c01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    const v3, 0x7f0c023b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    const v3, 0x7f0c023c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    const v3, 0x7f0c019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    invoke-virtual {p0, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const v3, 0x7f0e0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v3, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v3, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->refreshHotseat()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Lcom/android/launcher2/Folder;

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Lcom/android/launcher2/CellLayout;
    .param p3    # Lcom/android/launcher2/Workspace$CellOrient;
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$BindWidgetsState;)Lcom/android/launcher2/Workspace$BindWidgetsState;
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Workspace;
    .param p1    # Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/Workspace;

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method private backgroundAlphaInterpolator(F)F
    .locals 4
    .param p1    # F

    const/4 v0, 0x0

    const v1, 0x3e99999a

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000

    goto :goto_0

    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private calculateglassAlpha(FZ)F
    .locals 6
    .param p1    # F
    .param p2    # Z

    const v5, 0x3f2b851f

    const v4, 0x3f28f5c3

    const/4 v0, 0x0

    const v3, 0x3e19999a

    const v2, 0x3ea8f5c3

    if-eqz p2, :cond_2

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    div-float v0, p1, v2

    mul-float/2addr v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    sub-float v0, v4, p1

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    goto :goto_0

    :cond_2
    cmpg-float v1, p1, v5

    if-ltz v1, :cond_0

    sub-float v0, p1, v5

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    .locals 7
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Lcom/android/launcher2/CellLayout;
    .param p3    # Lcom/android/launcher2/Workspace$CellOrient;
    .param p4    # Z

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->leftMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->topMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->rightMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_8

    invoke-virtual {p2, v2}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v5, :cond_0

    instance-of v5, v4, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    instance-of v5, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    instance-of v5, v4, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->unbind()V

    if-eqz p4, :cond_4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    check-cast v4, Lcom/android/launcher2/HomeItem;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->refresh()V

    goto :goto_1

    :cond_6
    instance-of v5, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget-object v5, v4, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v5, :cond_7

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    :cond_7
    move-object v5, v0

    check-cast v5, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/AppIconView;->updateMovieValues()V

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)Z
    .locals 24
    .param p1    # Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v11

    if-eqz v11, :cond_0

    const v20, 0x7f090058

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isShown()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v20

    if-nez v20, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_4

    const v20, 0x7f0c006e

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0c01a7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    :cond_2
    :goto_1
    const/16 v20, 0x0

    :goto_2
    return v20

    :cond_3
    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_4
    const v20, 0x7f0c01a9

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0c01a7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->loadWidgetSkipList()Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->setWorkspaceLoading()V

    const v20, 0x7f0c01ad

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v8

    new-instance v6, Lcom/android/launcher2/Workspace$CellOrient;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lcom/android/launcher2/Workspace$CellOrient;-><init>(Lcom/android/launcher2/Workspace$1;)V

    const v20, 0x7f100015

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    const v20, 0x7f100015

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    const v20, 0x7f100017

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    const v20, 0x7f100017

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    const v20, 0x7f100016

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    const v20, 0x7f100016

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    const v20, 0x7f0c019c

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    const v20, 0x7f0c0199

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    const v20, 0x7f0c0193

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    const v20, 0x7f0c0196

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    const v20, 0x7f0c01aa

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->leftMargin:I

    const v20, 0x7f0c01ab

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->topMargin:I

    const v20, 0x7f0c01ac

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->rightMargin:I

    const/4 v12, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    if-ne v12, v8, :cond_8

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    new-instance v20, Lcom/android/launcher2/Workspace$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/launcher2/Workspace$20;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_9
    new-instance v20, Lcom/android/launcher2/Workspace$21;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/Workspace$21;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$CellOrient;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->reConfigureHotseat()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeBottomBar()Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getGoogleSearchView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    const v20, 0x7f0c029d

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->setTabletHotseat()V

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v18

    if-eqz v18, :cond_b

    const v20, 0x7f0c01fb

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const v20, 0x7f0c0090

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->handleScrollOnOrientationChange()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v20

    if-eqz v20, :cond_c

    const v20, 0x7f0c01a9

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0c01a7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    :goto_5
    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_c
    const v20, 0x7f0c01a8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0c01a7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    goto :goto_5
.end method

.method private changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/Workspace$State;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method private createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    sget-object v0, Lcom/android/launcher2/Workspace$24;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # I

    const/4 v7, 0x1

    const/4 v0, 0x0

    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v4, p0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0018

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lez v3, :cond_0

    neg-int v4, v3

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-static {p0, p1, p2, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1060012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v7, 0x7f0c019c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v7, 0x7f0c0199

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0c00b8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    float-to-int v3, v7

    add-int v7, v2, p2

    add-int v8, v1, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v3

    sub-int v10, v2, v3

    int-to-float v10, v10

    sub-int v11, v1, v3

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v8, v6

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p1, v4, v4}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 21
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # I
    .param p3    # Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-eqz p3, :cond_5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, p0

    check-cast v17, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v9, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v9, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v17, 0x7f0e0018

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int v19, v19, p2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    add-int v20, v20, p2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    div-int/lit8 v17, p2, 0x2

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    const/16 v18, 0xf0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const v17, 0x3f59999a

    const v18, 0x3f59999a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    move-object/from16 v17, p0

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v11, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_0

    aget-object v7, v4, v10

    if-eqz v7, :cond_4

    move-object v9, v7

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetView;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p0

    check-cast v17, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual/range {v17 .. v17}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_2

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    check-cast p0, Lcom/android/launcher2/SurfaceWidgetView;

    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v16, p0

    check-cast v16, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    add-int/lit8 v17, v17, -0x3

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    const/4 v14, 0x1

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, p2, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v17, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v14, :cond_2

    check-cast p0, Lcom/android/launcher2/AppIconView;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v16, p0

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method private getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private static getHomeItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    instance-of v4, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/android/launcher2/HomeItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getScrollRange()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 11
    .param p1    # Lcom/android/launcher2/BaseItem;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    iget-wide v7, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v9, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 6
    .param p1    # Lcom/android/launcher2/FolderItem;
    .param p2    # Lcom/android/launcher2/FolderIconView;
    .param p3    # Z

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Launcher.Workspace"

    const-string v3, "Folder info marked as open, but associated folder is not open."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->initCurrentPage(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    new-instance v1, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    return-void
.end method

.method private isGoogleSearchWidget(I)Z
    .locals 9
    .param p1    # I

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v7, :cond_2

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isTouchActive()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationOnThis(I)Landroid/animation/Animator;
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    return-object v0
.end method

.method private loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_2

    :cond_1
    if-ne v7, v11, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadWhenRotationSkipList. Process tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v8, "appwidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v8, "sactivitywidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "surfacewidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_5
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadWidgetSkipList()Z
    .locals 9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const-string v7, "widget_skip"

    invoke-static {v4, v7}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object v3, v4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_2

    :cond_1
    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "when_rotation"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/android/launcher2/Workspace;->loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v6, 0x0

    :cond_2
    return v6

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method private openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 7
    .param p1    # Lcom/android/launcher2/FolderItem;
    .param p2    # Lcom/android/launcher2/FolderIconView;
    .param p3    # Z

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v4, v3, v2, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    new-instance v3, Lcom/android/launcher2/Workspace$19;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/Workspace$19;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v6, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->requestChildFocusForHWKey()V

    goto :goto_0
.end method

.method private reConfigureHotseat()V
    .locals 9

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/HomeView;->setHotseat(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->getHomeItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->restoreStateForOpenVisualize()V

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0
.end method

.method private reConfigureQuickLaunch()V
    .locals 13

    const/4 v12, 0x4

    const/high16 v11, 0x3f800000

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030022

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeView;->setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030023

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeView;->setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x3

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v5}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getCameraLayout()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_2
.end method

.method private refreshHotseat()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    goto :goto_0
.end method

.method private setScrollDirection(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method private setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Workspace$State;

    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    const-string v3, "syncWallpaperOffsetWithScroll"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 23

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    move/from16 v19, v0

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000

    invoke-virtual/range {v20 .. v22}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v15

    const/4 v14, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    int-to-float v0, v7

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v14, v14, v20

    mul-int/lit8 v20, v7, 0x2

    add-int v15, v15, v20

    :cond_1
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v20

    mul-int v18, v20, v11

    if-lez v16, :cond_6

    rem-int v17, v16, v18

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Scroller;->isFinished()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v20, v0

    sub-int v12, v17, v20

    const/high16 v20, 0x3f800000

    int-to-float v0, v12

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v9, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v4, v0

    :cond_2
    :goto_1
    int-to-float v2, v4

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v20, v2, v20

    add-float v13, v20, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v21, v0

    sub-int v21, v21, v19

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v6, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v5, v6, v20

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v5, 0x0

    :cond_3
    return v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f800000

    invoke-virtual/range {v20 .. v22}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    goto/16 :goto_0

    :cond_5
    move/from16 v4, v17

    goto :goto_1

    :cond_6
    if-gez v16, :cond_2

    rem-int v20, v16, v18

    add-int v4, v18, v20

    goto :goto_1

    :cond_7
    move/from16 v4, v16

    goto :goto_1
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1
    .param p1    # I
    .param p2    # I

    const v0, 0x3f8ccccd

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p1    # I
    .param p2    # I

    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    const v0, 0x3fcccccd

    const/high16 v1, 0x3f200000

    const/high16 v2, 0x3fc00000

    const v3, 0x3f99999a

    const v5, 0x3e9d89d7

    const v6, 0x3f80fc10

    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method abortConfigChanges()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/HomeItem;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeWidgetItem;->updateSupportWidgetSize()V

    :cond_1
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bindWidgetsAfterConfigChange()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1
.end method

.method protected cardTransform(Landroid/view/View;F)V
    .locals 24
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/16 v21, 0x0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v5, p1

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget-boolean v21, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    if-nez v21, :cond_0

    sget v21, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-nez v21, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/Workspace;->updatePageTransformWithoutTilt(Landroid/view/View;F)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v6

    const/high16 v21, 0x3f800000

    cmpl-float v21, p2, v21

    if-gtz v21, :cond_1

    const/high16 v21, -0x40800000

    cmpg-float v21, p2, v21

    if-ltz v21, :cond_1

    const/high16 v20, 0x3f800000

    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v14

    const/16 v17, 0x0

    const/high16 v21, 0x3f800000

    sub-float v21, v21, v3

    const v22, 0x3f333333

    mul-float v21, v21, v22

    const v22, 0x3e99999a

    add-float v7, v21, v22

    const/4 v4, 0x1

    const v15, 0x3ea8f5c3

    const v16, 0x3f2b851f

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000

    if-eqz v2, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v18, p2, v21

    cmpg-float v21, v3, v16

    if-gez v21, :cond_5

    sget-object v21, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    sub-float v22, v16, v3

    const/high16 v23, 0x3f800000

    sub-float v23, v23, v15

    div-float v22, v22, v23

    invoke-interface/range {v21 .. v22}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    move v12, v9

    cmpg-float v21, v3, v15

    if-gez v21, :cond_4

    const/high16 v21, 0x3f000000

    mul-float v21, v21, v3

    div-float v17, v21, v15

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v21

    const/high16 v22, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_7

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setNoNeedToDraw(Z)V

    goto/16 :goto_1

    :cond_4
    const/high16 v21, 0x3f000000

    sub-float v22, v16, v3

    mul-float v21, v21, v22

    div-float v17, v21, v15

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    const/16 v17, 0x0

    goto :goto_2

    :cond_6
    invoke-static {v14, v7, v6}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v21

    const/high16 v22, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    :cond_7
    const/high16 v21, 0x3f800000

    const v22, 0x3dcccccd

    sget-object v23, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v23

    mul-float v22, v22, v23

    sub-float v20, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0e001b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    if-nez v8, :cond_c

    const/16 v21, 0x0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_c

    sget-boolean v21, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v21, :cond_b

    const/high16 v21, 0x3f800000

    const v22, 0x3dcccccd

    sget-object v23, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v23

    mul-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v23

    div-float v22, v22, v23

    sub-float v20, v21, v22

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v12, 0x3f800000

    :cond_8
    :goto_4
    invoke-virtual {v5, v12}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-nez v21, :cond_9

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz v2, :cond_a

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setScaleX(F)V

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    :cond_b
    sget v21, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v11

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setPivotX(F)V

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v22

    div-float v13, v21, v22

    const/high16 v20, 0x3f800000

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_d

    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-lez v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v21, 0x3f800000

    const v22, 0x3dcccccd

    sget-object v23, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v23

    mul-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v23

    div-float v22, v22, v23

    sub-float v20, v21, v22

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setScaleX(F)V

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setScaleY(F)V

    const/high16 v12, 0x3f800000

    goto/16 :goto_4

    :cond_d
    int-to-float v0, v10

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setPivotY(F)V

    int-to-float v0, v11

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_4
.end method

.method public changeOrientationExtras()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    const v2, 0x7f0e0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    const v2, 0x7f0c019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    const v2, 0x7f0c01a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    const v2, 0x7f0c023b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    const v2, 0x7f0c023c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    const v2, 0x7f0e0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v4, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
    .locals 29
    .param p1    # Lcom/android/launcher2/Workspace$State;
    .param p2    # Z
    .param p3    # I
    .param p4    # Lcom/android/launcher2/BaseItem;

    sget-boolean v4, Lcom/android/launcher2/Workspace;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", animated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 p2, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(I)V

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V

    :cond_4
    const/high16 v19, 0x3f800000

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_15

    if-eqz p4, :cond_12

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_12

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout;

    :cond_6
    :goto_1
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_13

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeAppsBtn()Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeEditBtn()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomePhoneBtn()Landroid/view/View;

    move-result-object v12

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_19

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->setSecretPageMetaphorVisibility(Z)V

    :cond_8
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_9

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz v11, :cond_a

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0090

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v23, v0

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v4, Lcom/android/launcher2/Workspace$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a
    if-eqz v11, :cond_b

    if-eqz p4, :cond_b

    const/4 v4, 0x2

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_1

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v4, Lcom/android/launcher2/Workspace$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/android/launcher2/Workspace$14;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v4

    if-nez v4, :cond_c

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getTopBar()Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_d

    if-eqz p2, :cond_18

    const/4 v4, 0x2

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v4, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/16 v26, 0x0

    aput v26, v6, v7

    move-object/from16 v0, v24

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v6, 0xdc

    invoke-virtual {v13, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_e

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_23

    :cond_e
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_22

    if-nez p4, :cond_f

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_21

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v4}, Lcom/android/launcher2/PageIndicatorPreviewManager;->startEditMode()V

    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->hideHomeBottomBar()V

    :cond_10
    const v4, 0x7f05001c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v14

    sget-boolean v4, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v26, 0x7f0d0006

    const/16 v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/Launcher;->setWindowDarkenBackground(ZF)V

    :cond_11
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f05001e

    invoke-static {v4, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_12
    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_1

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_14

    sget-object v4, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_6
    invoke-virtual {v6, v4}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto/16 :goto_2

    :cond_14
    sget-object v4, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_6

    :cond_15
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/Workspace;->isGoogleSearchWidget(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto/16 :goto_2

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_7

    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    :cond_19
    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1b

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->setSecretPageMetaphorVisibility(Z)V

    :cond_1a
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_d

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0090

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v23, v0

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_2

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v4, Lcom/android/launcher2/Workspace$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/android/launcher2/Workspace$15;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_1b
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->setSecretPageMetaphorVisibility(Z)V

    :cond_1c
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/Launcher;->mIgnoreCocktailHelp:Z

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1e

    if-eqz v20, :cond_1d

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    if-eqz v11, :cond_1e

    const/4 v4, 0x2

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_3

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v4, Lcom/android/launcher2/Workspace$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/android/launcher2/Workspace$16;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v4

    if-nez v4, :cond_1f

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getTopBar()Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_d

    const-string v4, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v26, 0x3f800000

    aput v26, v6, v7

    move-object/from16 v0, v24

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v6, 0xdc

    invoke-virtual {v13, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/launcher2/Workspace$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lcom/android/launcher2/Workspace$17;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->showPageIndicator(Z)V

    goto/16 :goto_3

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v4}, Lcom/android/launcher2/PageIndicatorPreviewManager;->endEditMode()V

    goto/16 :goto_4

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v4}, Lcom/android/launcher2/PageIndicatorPreviewManager;->startEditMode()V

    goto/16 :goto_4

    :cond_23
    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v4, :cond_24

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v4, :cond_28

    :cond_24
    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayout;

    if-eqz v16, :cond_25

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v4, :cond_25

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout;->reset()V

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v4}, Lcom/android/launcher2/PageIndicatorPreviewManager;->endEditMode()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->showHomeBottomBar()V

    :cond_26
    sget-boolean v4, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v4, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/Launcher;->setWindowDarkenBackground(ZF)V

    :cond_27
    const v4, 0x7f05001d

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f05001f

    invoke-static {v4, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    :cond_28
    if-eqz v10, :cond_29

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2e

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    :goto_9
    if-eqz v9, :cond_2a

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2f

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    :goto_a
    if-eqz v12, :cond_2b

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_30

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    :goto_b
    if-eqz p2, :cond_31

    sget v18, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    :goto_c
    sget-object v4, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v19, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2c
    :goto_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_32

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_32

    if-nez p4, :cond_32

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v4, :cond_2d

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v4, :cond_2c

    :cond_2d
    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2c

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_d

    :cond_2e
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_2f
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_30
    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_31
    const/16 v18, 0x0

    goto :goto_c

    :cond_32
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_d

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public closeFolder()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    :cond_0
    return-void
.end method

.method createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Canvas;
    .param p3    # I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v7}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v7, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v6, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v3, v7

    :cond_0
    add-int v7, v6, p3

    add-int v8, v3, p3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p2, v5, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createPageForDrag()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->insertPlusPage(Z)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->insertPlusPage(Z)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    goto :goto_1

    :cond_5
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->insertPlusPage(Z)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->insertPlusPage(Z)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto/16 :goto_0
.end method

.method createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/Canvas;
    .param p4    # I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayout;->spanToPixel(II)[I

    move-result-object v0

    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Outliner;->boxOutline(II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Canvas;
    .param p3    # I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const v8, 0x3f060a92

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    :cond_1
    const v4, 0x3f860a92

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    sub-float/2addr v3, v8

    div-float v4, v3, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x40800000

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-super {p0, p1, v4}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1    # Landroid/view/DragEvent;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v0, Lcom/android/launcher2/Workspace$23;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$23;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V
    .locals 5
    .param p1    # Lcom/android/launcher2/SurfaceWidgetView;
    .param p2    # Lcom/android/launcher2/CellLayout;

    instance-of v2, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterSurfaceWidgetResizeMode state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/launcher2/Workspace$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/SurfaceWidgetView;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/launcher2/Workspace$10;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-string v2, "Launcher.Workspace"

    const-string v3, "enterSurfaceWidgetResizeMode switching to resize mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 9
    .param p1    # Lcom/android/launcher2/LauncherAppWidgetHostView;
    .param p2    # Lcom/android/launcher2/CellLayout;

    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_2

    const-string v6, "add_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "resize_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sput-boolean v8, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    :cond_2
    instance-of v6, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog_step2()V

    :cond_3
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v6, 0x4

    new-array v2, v6, [I

    invoke-virtual {p2, p1, v2}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    aget v6, v2, v8

    if-nez v6, :cond_4

    const/4 v6, 0x2

    aget v6, v2, v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget v7, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    :cond_4
    invoke-virtual {v5}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    new-instance v4, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/HomeWidgetItem;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v6}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    return-void
.end method

.method public exitWidgetResizeMode(Z)V
    .locals 8
    .param p1    # Z

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitWidgetResizeMode State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newDragStarted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v5, v5, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-nez v5, :cond_1

    :cond_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    new-instance v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-direct {v4, v5}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {v4}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    const/4 v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    const-string v5, "Launcher.Workspace"

    const-string v6, "exitWidgetResizeMode. isClearResizeFrame is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->refreshHotseat()V

    goto :goto_0

    :cond_8
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_2
.end method

.method public getBackgroundDarken()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    return v0
.end method

.method public getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getEditModeShrinkFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    return v1
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getIsDragOccuring()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;
    .locals 1
    .param p1    # Lcom/android/launcher2/PagedView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    new-instance v0, Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicatorPreviewManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    return-object v0
.end method

.method public getPendingSnapToPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    return v0
.end method

.method protected getScrollMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/Workspace$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1    # Landroid/graphics/Rect;

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_0

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return v9

    :pswitch_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getWidgetRotateSkipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public insertPlusPage(Z)Lcom/android/launcher2/CellLayout;
    .locals 4
    .param p1    # Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    :cond_0
    return-object v0
.end method

.method public insertWorkspaceFestivalScreen(IIZ)Lcom/android/launcher2/CellLayout;
    .locals 12
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v11, -0x1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030059

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertWorkspaceFestivalScreen() insertAt :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {v2, v0, p2}, Lcom/android/launcher2/FestivalPageManager;->drawFestivalPageTitle(Lcom/android/launcher2/CellLayout;I)Z

    invoke-virtual {p0, v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    if-eqz p3, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method public insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;
    .locals 12
    .param p1    # I
    .param p2    # Z

    const/4 v11, -0x1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030058

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    if-gt p1, v2, :cond_2

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v6, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method public insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;
    .locals 11
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    const/4 v10, -0x1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030058

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, v0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_1

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    if-eqz p3, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v3, p1, 0x1

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1    # [I
    .param p2    # Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    return-object v1
.end method

.method protected invalidatePageData()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->invalidatePageData()V

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updatePageTransforms()V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpened()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isInResizeMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageAddedForDrag(I)Z
    .locals 3
    .param p1    # I

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isQuickViewWorkspaceOpend()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartDragStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    return v0
.end method

.method public isSwitchingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public isTouchResizeFrame(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->isPointInFrame(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method launchAllAppsIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getAllAppsIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # [F

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    aget v1, p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    aget v1, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .param p1    # Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_0
.end method

.method moveToLeftScreen(ZZ)V
    .locals 6
    .param p1    # Z
    .param p2    # Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    add-int/lit8 v5, v2, -0x1

    if-ltz v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    :goto_2
    iget v5, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/launcher2/Workspace;->snapToPage(III)V

    :goto_3
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    :goto_4
    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_3
.end method

.method public newPage(Z)I
    .locals 6
    .param p1    # Z

    const/high16 v3, -0x80000000

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_0

    check-cast v1, Lcom/android/launcher2/FolderItem;

    check-cast p1, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, v1, p1, v10}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    :cond_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v11

    aget v6, v2, v10

    aget v7, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, p1, v0, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher2/Folder;->close(ZZ)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->getGuideFragmentInstance()Lcom/android/launcher2/guide/GuideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher2/guide/GuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 5
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_6

    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :cond_3
    new-instance v1, Lcom/android/launcher2/Workspace$StateChangeRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Workspace$StateChangeRunnable;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V

    goto :goto_1
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragStartedWithItem ignored. mIsDragging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragStartedWithItem. View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->createPageForDrag()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-ne v2, v5, :cond_4

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :cond_3
    :goto_2
    new-instance v2, Lcom/android/launcher2/Workspace$8;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v8

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v8

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v8

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lcom/android/launcher2/Workspace;->setScrollDirection(I)V

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    if-nez p3, :cond_7

    move v5, v6

    :goto_1
    add-int v2, v9, v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne v2, v6, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    iget-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v5, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v5

    if-ne v5, v7, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->cancelScrollRunnable()V

    move v4, v8

    goto/16 :goto_0

    :cond_7
    move v5, v7

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ne v2, v5, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_a

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->cancelScrollRunnable()V

    move v4, v8

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_b
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public onExitScrollArea()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method onFadeEnd()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onFadeStart()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, 0x1

    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    if-eq v3, v0, :cond_2

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_4

    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->setupDummyPanel()V

    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->isTouchResizeFrame(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->setAllowLongPress(Z)V

    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v6

    if-le v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    :cond_4
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->snapToDestination()V

    :cond_5
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    mul-int v6, v1, v1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v2, v4, v6

    const/16 v4, 0x32

    if-le v2, v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_7

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    :cond_7
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v7, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto/16 :goto_1

    :pswitch_5
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v5, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/PagedView;->onLayout(ZIIII)V

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    new-instance v5, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    if-eqz v5, :cond_5

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000

    iget v7, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v6, v7

    mul-float v3, v5, v6

    const/high16 v5, 0x3f000000

    mul-float v4, v3, v5

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    const/high16 v6, 0x3f000000

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    :cond_3
    const/high16 v5, 0x3f800000

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v5, v6

    div-float v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    :cond_4
    :goto_0
    iget v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iget v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    int-to-float v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000

    iget v7, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    const/4 v4, 0x0

    :cond_6
    :goto_1
    const/high16 v5, 0x3f800000

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v5, v6

    div-float v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    goto :goto_0

    :cond_7
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v4, v5

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onLongClick(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_2

    const/4 v11, 0x2

    new-array v0, v11, [I

    const/4 v11, 0x2

    new-array v8, v11, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    float-to-int v11, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int v9, v11, v12

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int v10, v11, v12

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v6

    add-int v11, v5, v7

    div-int v1, v9, v11

    add-int v11, v3, v6

    div-int v2, v10, v11

    add-int v11, v5, v7

    mul-int/2addr v11, v1

    div-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v3, v6

    mul-int/2addr v12, v2

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v11, v12, :cond_1

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4, v11, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v4, v1, v11}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 4

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public onPreShowAllApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    return-void
.end method

.method public onScrollComplete()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->onExitScrollArea()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    move v1, v2

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onViewAddedInPagedView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onViewAddedInPagedView(Landroid/view/View;)V

    instance-of v2, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Workspace can only have CellLayoutWithResizableWidgets children."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setHomeView(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    sget-object v2, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    const/4 v1, 0x0

    const-string v2, "USA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const v2, 0x7f0900d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    :cond_0
    return-void
.end method

.method pauseScreen(I)V
    .locals 10
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lt p1, v7, :cond_2

    :cond_0
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: trying to pause screen on invalid page index. passed in page number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", children count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v7, :cond_4

    check-cast v5, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnPause(Landroid/content/Context;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    instance-of v7, v5, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v7, :cond_5

    check-cast v5, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v5}, Lcom/android/launcher2/SurfaceWidgetItem;->onPause()V

    goto :goto_1

    :cond_5
    instance-of v7, v5, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v7, v7, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MovieDrawable;->pause()V

    goto :goto_1
.end method

.method public releaseShadows()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/android/launcher2/AppIconView;

    move-object v8, v9

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    iput-object v9, v7, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remainOrRemovePlusPage()V
    .locals 8

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v6

    if-ne v6, v2, :cond_3

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v6

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    :cond_1
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    if-eqz v2, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v1, v6, 0x1

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v6, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v1, v6, 0x1

    :goto_3
    if-ge v1, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1
.end method

.method protected removeCreatedPageForDrag()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    :cond_1
    return-void
.end method

.method removeHelpAppItem(Lcom/android/launcher2/HomeItem;)V
    .locals 8
    .param p1    # Lcom/android/launcher2/HomeItem;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v4, v5}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p1, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v4, :cond_1

    const-string v4, "SurfaceWidgetFlow"

    const-string v5, "destroying surface widget for removeHelpItem?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_0
.end method

.method removeItems(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget-object v11, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget-wide v11, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x64

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    iget-wide v11, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x65

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    iget-wide v11, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    iget-wide v11, v5, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v11, v12}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    instance-of v11, v5, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v11, :cond_5

    move-object v10, v5

    check-cast v10, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v11, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v11, Lcom/android/launcher2/Workspace$18;

    const-string v12, "deleteAppWidgetId"

    invoke-direct {v11, p0, v12, v0, v10}, Lcom/android/launcher2/Workspace$18;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_5
    instance-of v11, v5, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v11, :cond_6

    move-object v9, v5

    check-cast v9, Lcom/android/launcher2/SamsungWidgetItem;

    sget-object v12, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12, v11, v9}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_1

    :cond_6
    instance-of v11, v5, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v11, :cond_1

    move-object v8, v5

    check-cast v8, Lcom/android/launcher2/SurfaceWidgetItem;

    sget-object v7, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v7, v12}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->repositionOpenFolder()V

    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 2
    .param p1    # Lcom/android/launcher2/HomeFolderItem;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method resumeScreen(I)V
    .locals 11
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eq v3, p1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->isPaused()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v9, :cond_5

    check-cast v7, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    instance-of v9, v7, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v9, :cond_6

    check-cast v7, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v7}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_2

    :cond_6
    instance-of v9, v7, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v9, :cond_7

    move-object v9, v7

    check-cast v9, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v9, v9, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v9, :cond_4

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MovieDrawable;->resume()V

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v10, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v9, v10, :cond_4

    instance-of v9, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v9, :cond_4

    check-cast v7, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_2
.end method

.method public scrollLeft()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/ComponentName;
    .param p4    # I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0
    .param p1    # Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    return-void
.end method

.method setAllEmptyMessageVisibility(Z)V
    .locals 4
    .param p1    # Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setAllPagesVisibility(I)V
    .locals 4
    .param p1    # I

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundDarken(F)V
    .locals 2
    .param p1    # F

    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->setDummyPanelProperties()V

    return-void
.end method

.method public setContentIsRefreshable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    return-void
.end method

.method public setDragOutline(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 3
    .param p1    # F
    .param p2    # I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayout;->setDummyPanelProperties(FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 2
    .param p1    # F

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    const-string v1, "setHorizontalWallpaperOffset"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    return-void
.end method

.method public setPageVisibility(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPageZoom(F)V
    .locals 5
    .param p1    # F

    const/high16 v4, 0x3f800000

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v3, v4, v3

    div-float v0, v2, v3

    iget v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setPageIndicatorTop(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->setPageZoom(F)V

    return-void
.end method

.method public setPendingSnapToPage(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    return-void
.end method

.method setSecretPageMetaphorVisibility(Z)V
    .locals 5
    .param p1    # Z

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setSecretPageMetaphorVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setSecretPageMetaphorVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    return-void
.end method

.method public setWallpaperDimension()V
    .locals 5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$6;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x40000000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method public setWorkspaceAccessibilityEnabled(Z)V
    .locals 7
    .param p1    # Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    const-string v4, "(?i).*talkback.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    :cond_1
    return-void
.end method

.method setup(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/HomeView;

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_2
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    :cond_4
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method protected spiralTransform(Landroid/view/View;F)V
    .locals 18
    .param p1    # Landroid/view/View;
    .param p2    # F

    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    if-nez v15, :cond_0

    sget v15, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-nez v15, :cond_2

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/Workspace;->updatePageTransformWithoutTilt(Landroid/view/View;F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    const/high16 v15, 0x3f800000

    cmpl-float v15, p2, v15

    if-gtz v15, :cond_1

    const/high16 v15, -0x40800000

    cmpg-float v15, p2, v15

    if-ltz v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    const v16, 0x3f4ccccd

    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v14

    const/high16 v15, 0x3f800000

    const v16, 0x3f4ccccd

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static/range {v15 .. v17}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    mul-float/2addr v14, v15

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v11

    const/high16 v15, 0x3f800000

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v15, v15, v16

    const v16, 0x3f333333

    mul-float v15, v15, v16

    const v16, 0x3e99999a

    add-float v5, v15, v16

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    const v15, 0x3e4ccccd

    cmpl-float v15, v4, v15

    if-lez v15, :cond_3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v16, 0x3f19999a

    cmpg-float v15, v15, v16

    if-lez v15, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v15, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v16, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static {v11, v5, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    const/high16 v16, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    :cond_6
    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f800000

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    sub-float v16, v16, v17

    const v17, 0x3e4ccccd

    add-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v15, 0x41a00000

    const/high16 v16, 0x41700000

    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    mul-float v10, v15, p2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    mul-float v15, v15, p2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v12, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e001b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    int-to-float v13, v15

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v15, :cond_a

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v7, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    int-to-float v15, v8

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotY(F)V

    int-to-float v15, v9

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotX(F)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v16, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setScaleX(F)V

    :cond_7
    const/high16 v15, 0x3f800000

    cmpg-float v15, v14, v15

    if-gez v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_8

    const/high16 v15, 0x3f800000

    sub-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_9

    const/high16 v15, 0x3f800000

    sub-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-virtual {v3, v15}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    invoke-virtual {v3, v12}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v16, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v3, v10}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    goto :goto_1

    :cond_b
    if-nez v6, :cond_10

    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_10

    sget-boolean v15, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v15, :cond_d

    if-eqz v7, :cond_c

    int-to-float v15, v9

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    :goto_3
    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotX(F)V

    const/high16 v15, 0x40000000

    div-float v15, v13, v15

    neg-float v15, v15

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v16

    div-float v10, v15, v16

    :goto_4
    if-eqz v7, :cond_e

    const/4 v12, 0x0

    :goto_5
    if-eqz v7, :cond_f

    :goto_6
    const/high16 v1, 0x3f800000

    goto/16 :goto_2

    :cond_c
    const/4 v15, 0x0

    goto :goto_3

    :cond_d
    sget v15, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v9

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotX(F)V

    neg-float v15, v13

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v16

    div-float v10, v15, v16

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    int-to-float v12, v15

    goto :goto_5

    :cond_f
    const/high16 v14, 0x3f800000

    goto :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_14

    const/4 v15, 0x0

    cmpl-float v15, p2, v15

    if-lez v15, :cond_14

    if-eqz v7, :cond_11

    int-to-float v15, v9

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    :goto_7
    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotX(F)V

    const/high16 v15, 0x40000000

    div-float v15, v13, v15

    neg-float v15, v15

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v16

    div-float v10, v15, v16

    if-eqz v7, :cond_12

    const/4 v12, 0x0

    :goto_8
    if-eqz v7, :cond_13

    :goto_9
    const/high16 v1, 0x3f800000

    goto/16 :goto_2

    :cond_11
    int-to-float v15, v9

    goto :goto_7

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v12, v15

    goto :goto_8

    :cond_13
    const/high16 v14, 0x3f800000

    goto :goto_9

    :cond_14
    int-to-float v15, v8

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotY(F)V

    int-to-float v15, v9

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_2
.end method

.method startDrag(Landroid/view/View;)Z
    .locals 5
    .param p1    # Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    :goto_1
    invoke-static {p1, v3, v2}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnPause(Landroid/content/Context;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v3, 0x23

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000

    goto :goto_1

    :cond_5
    instance-of v2, v1, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->onPause()V

    goto :goto_2
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    return-void
.end method

.method protected syncPageWithQuickView(I)Z
    .locals 7
    .param p1    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    move v0, p1

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v2, v3

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    if-ge p1, v5, :cond_5

    move v1, v3

    :goto_2
    if-ne v2, v1, :cond_0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/QuickView;->setCurrentPage(I)V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    :cond_3
    move v4, v3

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v5

    if-lt v0, v5, :cond_2

    goto :goto_0
.end method

.method public syncPages()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsOnPage()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public turnOffEmptyPageMsg()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setShowEmptyPageMessagePref(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SHOW_EMPTY_PAGE_MSG"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # F

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v2, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->cardTransform(Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->spiralTransform(Landroid/view/View;F)V

    goto :goto_1
.end method

.method protected updatePageTransformWithoutTilt(Landroid/view/View;F)V
    .locals 16
    .param p1    # Landroid/view/View;
    .param p2    # F

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    const/high16 v12, 0x3f800000

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    const v13, 0x3f333333

    mul-float/2addr v12, v13

    const v13, 0x3e99999a

    add-float v3, v12, v13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sget v12, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    sget v14, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    sub-float/2addr v13, v14

    int-to-float v14, v8

    mul-float/2addr v13, v14

    int-to-float v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setPivotX(F)V

    int-to-float v12, v7

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setPivotY(F)V

    if-nez v5, :cond_2

    const/4 v12, 0x0

    cmpg-float v12, p2, v12

    if-gez v12, :cond_2

    const/high16 v12, 0x3f800000

    const v13, 0x3dcccccd

    sget-object v14, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-interface {v14, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v14

    div-float/2addr v13, v14

    sub-float v9, v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    int-to-float v11, v12

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    if-nez v4, :cond_1

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v9

    mul-float v12, v12, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x40200000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    iget-object v12, v12, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v1

    move-object/from16 v12, p1

    check-cast v12, Lcom/android/launcher2/CellLayout;

    invoke-static {v10, v3, v2}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v13

    const/high16 v14, 0x3f800000

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    invoke-static {v13, v14, v15}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v1, v14}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    const/high16 v12, 0x3f800000

    const/high16 v13, 0x3f800000

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    const v14, 0x3e4ccccd

    add-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v12, v6, -0x1

    if-ne v5, v12, :cond_3

    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_3

    const/high16 v12, 0x3f800000

    const v13, 0x3dcccccd

    sget-object v14, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-interface {v14, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v14

    div-float/2addr v13, v14

    sub-float v9, v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v12, v13

    int-to-float v11, v12

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1
.end method

.method updateShortcutsAndSurfaceWidgets(Ljava/util/List;Z)V
    .locals 24
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v20, "Launcher.Workspace"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isBadgeUpdate : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/BaseItem;

    instance-of v0, v15, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v14, v15

    check-cast v14, Lcom/android/launcher2/HomeShortcutItem;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    if-ne v5, v14, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v19

    if-eqz p2, :cond_3

    if-eqz v19, :cond_3

    check-cast v19, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    goto :goto_1

    :cond_3
    iget-object v0, v14, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v0, v14, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    :cond_5
    const/16 v17, 0x0

    if-eqz v19, :cond_6

    move-object/from16 v20, v19

    check-cast v20, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v20, v19

    check-cast v20, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v20, v19

    check-cast v20, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    move-object/from16 v20, v19

    check-cast v20, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/AppIconView;->setHotseatText(Lcom/android/launcher2/HomeItem;)V

    :cond_6
    if-nez v17, :cond_7

    const-string v17, ""

    :cond_7
    iget-object v0, v14, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    :cond_8
    instance-of v0, v15, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object v14, v15

    check-cast v14, Lcom/android/launcher2/HomeFolderItem;

    const/4 v6, 0x0

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_d

    invoke-virtual {v14, v10}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v7, :cond_a

    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    if-ne v5, v7, :cond_b

    const/4 v6, 0x1

    if-nez p2, :cond_9

    iget-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v20, v19

    check-cast v20, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    check-cast v19, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    goto/16 :goto_0

    :cond_f
    instance-of v0, v15, Lcom/android/launcher2/SurfaceWidgetItem;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v18, v15

    check-cast v18, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_10
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    if-nez p2, :cond_10

    move-object/from16 v0, v18

    if-ne v5, v0, :cond_10

    const-string v20, "SurfaceWidgetFlow"

    const-string v21, "making surface widget for update"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    :cond_11
    return-void

    :cond_12
    sget-object v20, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isShown()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_4
.end method

.method protected updateWallpaperOffsets()V
    .locals 6

    const/high16 v5, 0x3f000000

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-boolean v4, v4, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_4

    move v1, v5

    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_5

    move v2, v5

    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v2

    goto :goto_2
.end method
