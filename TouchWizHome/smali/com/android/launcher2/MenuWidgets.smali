.class public Lcom/android/launcher2/MenuWidgets;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;,
        Lcom/android/launcher2/MenuWidgets$WidgetComparator;,
        Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateObj;,
        Lcom/android/launcher2/MenuWidgets$WidgetState;,
        Lcom/android/launcher2/MenuWidgets$Filter;,
        Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;,
        Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;,
        Lcom/android/launcher2/MenuWidgets$DisplayType;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final MW_DEBUG:Z = false

.field private static final PAGE_BG_ALPHA_VALUE:I = 0x0

.field private static final PAGE_SLEEP_DELAY:I = 0x96

.field private static final PAGE_SLEEP_DELAY_FIRST:I = 0xc8

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuWidgets"

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static final UPDATE_PACKAGES_STR:Ljava/lang/String; = "packagesChanged"

.field private static final WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

.field private static mSecretItemOffset:I


# instance fields
.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

.field private mDisplayedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field public mDragOnSearchState:Z

.field private mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

.field private mHasUninstallableWidgets:Z

.field private final mHelpWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstEnter:Z

.field private final mLastPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListenerAttached:Z

.field private mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

.field private mNumSecretWidgetPages:I

.field private mNumWidgetPages:I

.field private mPendingUpdatePackages:Z

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mRequestedOrientation:I

.field private final mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field public mSearchString:Ljava/lang/String;

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;-><init>(Lcom/android/launcher2/MenuWidgets$1;)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    sget-object v1, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$7;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    const v1, 0x7f0c01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->setDragSlopeThreshold(F)V

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    new-array v1, v6, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mHelpWidgetProviders:Ljava/util/List;

    invoke-virtual {p0, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher2/MenuWidgets;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumSecretWidgetPages:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuStateAnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuWidgets;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuWidgets;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/MenuWidgets;->prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V

    return-void
.end method

.method private addCategoryFolder(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    new-instance v20, Ljava/util/LinkedHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v21, Ljava/util/LinkedHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v3, p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    const/4 v7, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/MenuWidgets;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v0, v6, Lcom/android/launcher2/AvailableWidget;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, v6, Ljava/util/ArrayList;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object v5, v6

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/MenuWidgets;->sortByValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v17

    new-instance v19, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean v22, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v22, :cond_c

    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppModel;->hasSecretWidget()Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v0, v13, Ljava/util/ArrayList;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object v10, v13

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/AvailableWidget;

    invoke-interface/range {v22 .. v22}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_6
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v18, v13

    check-cast v18, Lcom/android/launcher2/AvailableWidget;

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    goto :goto_5
.end method

.method private beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    iget v6, p1, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    iput v6, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, p1, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    iput v6, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    const v6, 0x7f090017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v6, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/launcher2/ShadowBuilder;

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v6}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v6, v7, :cond_2

    iput-boolean v11, p0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    :cond_2
    sput-boolean v11, Lcom/android/launcher2/Launcher;->mIgnoreCocktailHelp:Z

    invoke-virtual {v3, v11, v12}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    const-wide/16 v7, 0x23

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f001f

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7, v11}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cancelAllTasks(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    move-result v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->handleScrollOnOrientationChange()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    const v2, 0x7f0e002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    const v2, 0x7f0e002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    const v2, 0x7f0c01e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    const v2, 0x7f0c01e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    const v2, 0x7f0c01e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    const v2, 0x7f0c01e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    const v2, 0x7f0c01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    const v2, 0x7f0c01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    const v2, 0x7f0c01f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c01f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->syncPages()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageLayout()I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateQuickViewMainMenu()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0
.end method

.method private clickNotAllowed(Landroid/view/View;)V
    .locals 8

    const v4, 0x7f0f0094

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    const v3, 0x7f090017

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getDesiredChildPageHeight()I
    .locals 3

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredChildPageWidth()I
    .locals 3

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v4, v5, v6

    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    :cond_0
    return v2
.end method

.method private getSleepForPage(I)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    sub-int p1, v1, p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v3, v0, 0x96

    if-lez v0, :cond_1

    const/16 v1, 0xc8

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v3, p1

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 11

    if-eqz p3, :cond_0

    iget-object v9, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v10, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-direct {p0, v9, v10}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_2
    iget-object v6, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    iget v2, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    iget v1, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    iget-object v9, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_4
    instance-of v9, v0, Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v8, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    instance-of v9, v0, Lcom/android/launcher2/AvailableWidget;

    if-eqz v9, :cond_3

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 16

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v14, v15

    mul-int v5, v8, v14

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v7, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_3

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/WidgetFolderView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderImage(Ljava/util/ArrayList;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    if-ge v14, v15, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    if-lt v14, v15, :cond_5

    :cond_4
    const/4 v11, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v14, v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v14

    if-ne v8, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v15, v3, v5

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v9, :cond_6

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v15, v3, v5

    invoke-virtual {v14, v15, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v14, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v14, v9}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v14, v3, v11, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v6, v14, v15

    move v4, v3

    :goto_5
    if-ge v4, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v15, v4, v5

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->onWidgetLoadPreviewComplete()V

    goto/16 :goto_0
.end method

.method private onWidgetLoadPreviewComplete()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->refreshWidgetStateView()V

    return-void
.end method

.method private openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 2

    new-instance v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/WidgetFolderView;->openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-nez v1, :cond_0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/WidgetFolderView;->openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    goto :goto_0
.end method

.method private prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v8

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    iget v12, v11, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->page:I

    if-eq v12, p2, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v12, v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v12, v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v12}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/MenuWidgets$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$4;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    new-instance v7, Lcom/android/launcher2/MenuWidgets$5;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuWidgets$5;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    new-instance v10, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    invoke-direct {v10, p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v10, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDisplayedWidgets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidget;->canUninstall()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    if-eq v3, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->menuWidgetsUpdated(Z)V

    :cond_2
    return-void
.end method

.method private setDragInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    const-string v0, "packagesChanged"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setMenuWidgetsAccessibilityEnabled(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuView;->setAccessibilityEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static sortByValues(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    new-instance v5, Lcom/android/launcher2/MenuWidgets$1;

    invoke-direct {v5, v3}, Lcom/android/launcher2/MenuWidgets$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 34

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v22, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->hasSecretWidget()Z

    move-result v4

    if-eqz v4, :cond_9

    sget v24, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    add-int v4, v24, v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getSecretWidgetCount()I

    move-result v28

    div-int v4, v28, v22

    add-int/lit8 v27, v4, 0x1

    rem-int v4, v28, v22

    if-nez v4, :cond_0

    add-int/lit8 v27, v27, -0x1

    :cond_0
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/MenuWidgets;->mNumSecretWidgetPages:I

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    move/from16 v0, v28

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/16 v16, 0x1

    :cond_1
    :goto_0
    move/from16 v0, v24

    if-le v0, v13, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget v4, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    if-nez v4, :cond_1

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    move/from16 v24, v28

    :goto_2
    add-int v4, v24, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_0

    :cond_4
    sub-int v4, p1, v27

    mul-int v4, v4, v22

    add-int v24, v28, v4

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v4, v0, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    if-eqz v16, :cond_8

    add-int/lit8 v4, p1, 0x1

    mul-int v4, v4, v22

    move/from16 v0, v28

    if-gt v0, v4, :cond_7

    sput v28, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_17

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v4, v0, Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    const-string v4, "Launcher.MenuWidgets"

    const-string v6, " Creating Widget Folder View"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v23

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030056

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/WidgetFolderView;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v17

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/4 v9, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_5
    if-eqz v9, :cond_6

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v18, v15, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v19, v15, v4

    new-instance v21, Landroid/widget/GridLayout$LayoutParams;

    sget-object v4, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v19

    invoke-static {v0, v4}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    sget-object v6, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v18

    invoke-static {v0, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v6}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v4, 0x33

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    if-lez v18, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_6
    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_7
    if-lez v19, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_8
    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setPageType(I)V

    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v4, p1, 0x1

    mul-int v4, v4, v22

    sput v4, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    goto/16 :goto_3

    :cond_8
    sput v13, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    goto/16 :goto_3

    :cond_9
    mul-int v24, p1, v22

    add-int v4, v24, v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncWidgetPageItems Page: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " immediate "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " subListOffsets "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v24

    if-gt v0, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v4, v0, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_3

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_b
    if-lez v18, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_a
    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_7

    :cond_c
    const/4 v4, 0x0

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setPageType(I)V

    goto/16 :goto_9

    :cond_f
    const-string v4, "Launcher.MenuWidgets"

    const-string v6, " Creating Widget View"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/PagedViewWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    :goto_b
    const/4 v4, 0x2

    new-array v11, v4, [I

    invoke-interface {v10, v11}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v4, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v18, v15, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v19, v15, v4

    new-instance v21, Landroid/widget/GridLayout$LayoutParams;

    sget-object v4, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v19

    invoke-static {v0, v4}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    sget-object v6, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v18

    invoke-static {v0, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v6}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v4, 0x33

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    if-lez v18, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_c
    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_d
    if-lez v19, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_e
    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-boolean v4, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v4, :cond_10

    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; row: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", col: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", lm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", tm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setPageType(I)V

    goto/16 :goto_9

    :cond_11
    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_12
    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    if-lez v18, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_f
    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_d

    :cond_14
    const/4 v4, 0x0

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_16
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setPageType(I)V

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    invoke-virtual {v5, v4}, Landroid/widget/GridLayout;->setColumnCount(I)V

    new-instance v3, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->run()V

    goto/16 :goto_1

    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getSleepForPage(I)I

    move-result v29

    sget-boolean v4, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v4, :cond_19

    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running runnable "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " page "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " items "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private syncWidgetRotation(I)V
    .locals 41

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v6, 0x7f0c01e8

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v40

    const v6, 0x7f0c01e7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v39

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v29, v6, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    mul-int v31, p1, v29

    add-int v6, v31, v29

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    const-string v6, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncWidgetPageItems Page: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " subListOffsets "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v31

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v6, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/PagedViewGridLayout;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_d

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const-string v6, "Launcher.MenuWidgets"

    const-string v8, " Creating Widget Folder View"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v27, v30

    check-cast v27, Ljava/util/ArrayList;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030056

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v6, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/WidgetFolderView;

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v22

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v32

    const/4 v12, 0x0

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_1

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v6, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v23, v19, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v24, v19, v6

    new-instance v28, Landroid/widget/GridLayout$LayoutParams;

    sget-object v6, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v24

    invoke-static {v0, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    sget-object v8, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v23

    invoke-static {v0, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v6, 0x33

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual/range {v36 .. v36}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    if-lez v23, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_3
    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_4
    if-lez v24, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_5
    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move/from16 v2, v19

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v8}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    if-lez v23, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_7
    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_7

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :cond_7
    const-string v6, "Launcher.MenuWidgets"

    const-string v8, " Creating Widget View"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, v30

    check-cast v13, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/PagedViewWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v13}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    :goto_9
    const/4 v6, 0x2

    new-array v14, v6, [I

    invoke-interface {v13, v14}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    const/4 v6, 0x0

    aget v6, v14, v6

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v13}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v6, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v6, 0x7f090017

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    move/from16 v0, v40

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v39

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v23, v19, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v24, v19, v6

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual/range {v36 .. v36}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    if-lez v23, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_a
    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_b
    if-lez v24, :cond_c

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_c
    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v6, -0x80000000

    invoke-static {v6}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v28

    iput-object v6, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/high16 v6, -0x80000000

    invoke-static {v6}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v28

    iput-object v6, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    const/16 v6, 0x33

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    invoke-interface {v13, v6, v8}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_8
    invoke-interface {v13}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    :cond_a
    if-lez v23, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_d
    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->setColumnCount(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    new-instance v4, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    const-string v6, "rotation"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v6, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private testDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->hasSecretWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getSecretWidgetCount()I

    move-result v0

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    return-void
.end method

.method private updatePageLayout()I
    .locals 6

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const-string v4, "rotation"

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateWidgetGridChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateDirtyPage()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return v3
.end method

.method private updateWidgetGridChildCount()I
    .locals 20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v18, v0

    mul-int v12, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    rem-int v9, v16, v12

    div-int v18, v16, v12

    if-nez v9, :cond_0

    const/16 v17, 0x0

    :goto_0
    add-int v13, v18, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v14, 0x0

    sub-int v6, v13, v4

    move v14, v6

    :goto_1
    if-eqz v6, :cond_2

    if-lez v6, :cond_1

    new-instance v10, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v18, v4, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    sub-int v6, v12, v8

    :goto_3
    if-eqz v6, :cond_7

    if-lez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030003

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    if-nez v9, :cond_5

    sub-int v6, v12, v8

    :goto_4
    if-eqz v6, :cond_7

    if-lez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030003

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_5
    sub-int v6, v9, v8

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    return v14
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher.MenuWidgets"

    const-string v1, "This widget state is Uninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeToWidgetStateNormal()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    return-void
.end method

.method cleanupCache(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->cleanupCache()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public closeFolder()Z
    .locals 5

    const/4 v2, 0x0

    const-string v1, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close Widget Folder  -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->closeFolder()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    const v0, 0x7f0f001f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageCacheSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    return v0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSecretWidgetCount()I
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gez v5, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->hasSecretWidget()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v5}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v5, v0

    goto :goto_0
.end method

.method public getSecretWidgetPageCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumSecretWidgetPages:I

    return v0
.end method

.method public getWidgetFolder()Lcom/android/launcher2/WidgetFolder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    return-object v0
.end method

.method getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 4

    sget-boolean v1, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State change from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void

    :cond_3
    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_4
    const-string v1, "UNKNOWN"

    goto :goto_1
.end method

.method public hasSecretWidget()Z
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasUninstallableWidgets()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    return v0
.end method

.method public initSecretItemOffset()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    return-void
.end method

.method public isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v2, p1, Lcom/android/launcher2/PagedViewWidget;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDataReady(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    const-string v1, "onDetachedFromWindow"

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->closeKeyboard()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isDataReady()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDataIsReady()V

    invoke-virtual {p0, v7, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->onDataReady(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v6

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageHeight()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    invoke-virtual {v0, v10, v8, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x33

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->onMeasure(II)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 4

    const-string v1, "Launcher.MenuWidgets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MenuWidgets::onTouchModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->onTouchModeChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    instance-of v2, p1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getBitmapLoaderRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setBitmapLoaderRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->acceleratedOverScroll(F)V

    return-void
.end method

.method public packagesChanged()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/MenuWidgets$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuWidgets$2;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method refreshQuickViewMenuWidget(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->refreshQuickView(Z)V

    :cond_0
    return-void
.end method

.method public refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshModel()V

    :cond_0
    return-void
.end method

.method public refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshView()V

    :cond_0
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->repositionOpenFolder()V

    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    :cond_0
    return-void
.end method

.method public runFilter()V
    .locals 8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->hasSecretWidget()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    sget-object v7, Lcom/android/launcher2/MenuWidgets$DisplayType;->ALL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    sget-object v7, Lcom/android/launcher2/MenuWidgets$DisplayType;->SECRET:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-ne v6, v7, :cond_3

    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    sget-object v7, Lcom/android/launcher2/MenuWidgets$DisplayType;->ALL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    sget-object v7, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-ne v6, v7, :cond_5

    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    if-nez v6, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    if-nez v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    iget-boolean v6, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    if-nez v6, :cond_6

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    new-instance v6, Lcom/android/launcher2/MenuWidgets$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$3;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    invoke-interface {v6, v5}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    goto :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    invoke-interface {v6, v5}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_2
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V

    return-void
.end method

.method public setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    return-void
.end method

.method public setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    return-void
.end method

.method public setSecretAvailableWidget(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->setSecret(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$6;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method public setWidgetTextVisible(Z)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/PagedViewWidget;->setLabelVisible(Z)V

    invoke-virtual {v5, p1}, Lcom/android/launcher2/PagedViewWidget;->setCellSpanVisible(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->syncWidgetPageItems(IZ)V

    return-void
.end method

.method public syncPages()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPages numPages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    if-ge v1, v4, :cond_1

    new-instance v2, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAvailableWidget()V
    .locals 5

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidgetListProvider;

    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    sget-object v3, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->updateCollator()V

    sget-object v3, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "Launcher.MenuWidgets"

    const-string v4, "updateAvailableWidget : can\'t load available widget"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method updateDirtyPage()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePackages(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "updatePackages"

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updatePackages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Launcher.MenuWidgets"

    const-string v4, "Launcher model is reloading becuase of configuration change ( ex. mcc/mnc update )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidgetListProvider;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    sput-boolean v5, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mHelpWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidgetListProvider;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->updateCollator()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    sget-object v4, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v7, v8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v8, 0x3f000000

    int-to-float v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000

    int-to-float v10, v4

    mul-float/2addr v9, v10

    int-to-float v10, v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/MenuWidgets;->mix(FFF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    int-to-float v8, v3

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    if-nez v2, :cond_3

    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_3

    neg-float v8, v7

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v6, v8

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/high16 v5, 0x3f800000

    const/high16 v8, 0x3f800000

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    const/high16 v8, 0x3f800000

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    if-nez v1, :cond_1

    const/4 v8, 0x0

    mul-float/2addr v8, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40200000

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    const/high16 v8, 0x3f800000

    const/high16 v9, 0x3f800000

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    const v10, 0x3e4ccccd

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_4

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4

    neg-float v8, v7

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->updateQuickView()V

    :cond_0
    return-void
.end method
