.class public final Lcom/android/launcher2/HomeView;
.super Landroid/widget/FrameLayout;
.source "HomeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/Launcher$ActivityResultCallback;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Lcom/android/launcher2/LifeCycle;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeView$33;,
        Lcom/android/launcher2/HomeView$LayoutParams;,
        Lcom/android/launcher2/HomeView$DropPos;,
        Lcom/android/launcher2/HomeView$HomeEditTabClickListener;,
        Lcom/android/launcher2/HomeView$AppWidgetResetObserver;,
        Lcom/android/launcher2/HomeView$SavedState;,
        Lcom/android/launcher2/HomeView$PendingAddArguments;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field public static final CHOOSER_MODE:Ljava/lang/String; = "mode"

.field private static final DEBUGGABLE:Z

.field static final DEBUG_WIDGETS:Z = false

.field private static final ENABLE_TILT:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final LOGD:Z = false

.field static final MENU_GROUP_WALLPAPER:I = 0x1

.field static final MENU_HELP:I = 0x5

.field static final MENU_MANAGE_APPS:I = 0x3

.field static final MENU_SYSTEM_SETTINGS:I = 0x4

.field static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "launcher.workspace_open_folder_id"

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_start"

.field static final PROFILE_STARTUP:Z = false

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_NEW_FOLDER_WITH_SHORTCUT_ITEM:I = 0x2

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_SHORTCUT:I = 0x7

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field public static final RESPONSE_CODE_SHOW_WIDGETS:I = -0x2710

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeView"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field static final WIDGET_BACKGROUND:I = 0x1000000

.field private static cpuBooster:Landroid/os/DVFSHelper; = null

.field static mDestinationNewFolderId:J = 0x0L

.field static mIsAllAppsButtonDisable:Z = false

.field private static sCurrentRotationAngle:I = 0x0

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsBindHotseat:Z = false

.field static sIsDragState:Z = false

.field static sPanelDrawer:Lcom/android/launcher2/PanelDrawer; = null

.field private static sPendingAddList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeView$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sTouchPt:Landroid/graphics/PointF; = null

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private final ADVANCE_MSG:I

.field private MyFilesButtonClickListener:Landroid/view/View$OnClickListener;

.field private final REMOVE_MARKETSAMPLE:I

.field private final SHOW_MARKETSAMPLE:I

.field private SearchButtonClickListener:Landroid/view/View$OnClickListener;

.field private VoiceSearchButtonClickListener:Landroid/view/View$OnClickListener;

.field public isHelpAppPageAdded:Z

.field public isHelpAppPageDeleted:Z

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAfterSavedInstanceState:Z

.field private mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

.field private mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mCameraCut:Landroid/widget/ImageView;

.field private final mChangeTphoneModeObserver:Landroid/database/ContentObserver;

.field private mCreateFolderColor:I

.field private mCurrentDragItem:Lcom/android/launcher2/BaseItem;

.field private mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDarkenView:Landroid/view/View;

.field private mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

.field private mEditBar:Lcom/android/launcher2/HomeEditBar;

.field private mEditIcon:Landroid/view/View;

.field private mEditIconDivider:Landroid/view/View;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mGoogleSearchView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHelphubObserver:Landroid/database/ContentObserver;

.field private mHomeAppsBtn:Landroid/view/View;

.field private mHomeBottomBar:Landroid/view/View;

.field private mHomeContainer:Landroid/view/View;

.field private mHomeDarkenLayer:Landroid/view/View;

.field private mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

.field mHomeEditItem:Landroid/view/MenuItem;

.field private mHomeEditTitleBar:Landroid/view/ViewGroup;

.field public mHomeKeyPress:Z

.field private mHomePhoneBtn:Landroid/view/View;

.field private mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

.field private mHomeSearchBtn:Landroid/view/View;

.field private mHomeTopBar:Landroid/view/View;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeletePopup:Z

.field public mIsHelpItemAdded:Z

.field private mMarketSample:Landroid/view/View;

.field private mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mMyFilesView:Landroid/view/View;

.field private mPanelBackgroundAlpha:F

.field private mPendingAddInfo:Lcom/android/launcher2/HomeItem;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

.field private mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mRestoring:Z

.field private mSavedState:Lcom/android/launcher2/HomeView$SavedState;

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mTargetFolderId:J

.field private mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

.field private mTmpAddItemCellCoordinates:[I

.field private mTmpAddItemSpans:[I

.field private mVoiceSearchView:Landroid/view/View;

.field mWaitingForResult:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field private removeHotseat:Z

.field private sIsHeadlinesHiddenForEditMode:Z

.field private screenIndexBeforeHelpAppPageAddition:I

.field private screenIndexFestivalHelpAppPageAddition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    sput v2, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    sput-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    new-instance v1, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/launcher2/HomeItem;

    invoke-direct {v1}, Lcom/android/launcher2/HomeItem;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    iput-object v4, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    iput-object v4, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    iput-object v4, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    iput-boolean v5, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    iput v5, p0, Lcom/android/launcher2/HomeView;->ADVANCE_MSG:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/launcher2/HomeView;->mAdvanceInterval:I

    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/launcher2/HomeView;->mAdvanceStagger:I

    iput v2, p0, Lcom/android/launcher2/HomeView;->SHOW_MARKETSAMPLE:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher2/HomeView;->REMOVE_MARKETSAMPLE:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    iput-object v4, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    iput-object v4, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    new-instance v1, Lcom/android/launcher2/HomeView$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$7;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->VoiceSearchButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/launcher2/HomeView$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$8;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->SearchButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/launcher2/HomeView$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$9;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->MyFilesButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/launcher2/HomeView$10;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$10;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/android/launcher2/HomeView$11;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$11;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    new-instance v1, Lcom/android/launcher2/HomeView$20;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$20;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/HomeView$21;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$21;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/android/launcher2/HomeView$26;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HomeView$26;-><init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/launcher2/HomeView$27;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HomeView$27;-><init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    iput-object v4, p0, Lcom/android/launcher2/HomeView;->mHomeEditItem:Landroid/view/MenuItem;

    iput-boolean v5, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    iput v6, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    iput v6, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    iput v3, p0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->registerContentObservers()V

    return-void
.end method

.method private ChangeTphoneMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherModel;->ChangeTphoneMode(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeView;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomePendingWidget;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/HomeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->ChangeTphoneMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    return v0
.end method

.method static synthetic access$500()Landroid/os/DVFSHelper;
    .locals 1

    sget-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeView;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/HomeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method private addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-eqz p2, :cond_0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getDefSpans()[I

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v15

    iget v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v15}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_CONFIGURE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v18, "appWidgetId"

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    check-cast v5, Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    if-eqz v17, :cond_3

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    const-string v18, "com.sec.android.app.launcher.prefs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v18, "tempScreen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempCellX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempCellY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempSpanX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempSpanY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeView;->copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V

    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_3
    if-eqz v10, :cond_4

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_4
    if-eqz v16, :cond_2

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0
.end method

.method private addSamsungWidget(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    .locals 36

    sget-object v30, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;)Lcom/android/launcher2/SamsungWidgetItem;

    move-result-object v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->container:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->mScreen:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v29

    const/16 v28, 0x2

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    move-result-object v23

    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v32, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v23, v5

    aput v5, v32, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v23, v5

    aput v5, v32, v4

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, v32, v4

    const/4 v4, 0x3

    const/4 v5, -0x1

    aput v5, v32, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v34, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->spanX:I

    aput v5, v34, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->spanY:I

    aput v5, v34, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->dropPos:[I

    move-object/from16 v35, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellX:I

    if-ltz v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellY:I

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellX:I

    aput v5, v9, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellY:I

    aput v5, v9, v4

    const/16 v24, 0x1

    :cond_0
    :goto_0
    if-nez v24, :cond_4

    new-instance v12, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v4, 0x0

    aget v13, v34, v4

    const/4 v4, 0x1

    aget v14, v34, v4

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v24

    iget v10, v12, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v5, v9, v4

    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v5, v9, v4

    iget-boolean v4, v12, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    :cond_1
    if-nez v24, :cond_4

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_2
    if-eqz v35, :cond_0

    if-eqz v29, :cond_0

    const/4 v4, 0x0

    aget v5, v35, v4

    const/4 v4, 0x1

    aget v6, v35, v4

    const/4 v4, 0x0

    aget v7, v34, v4

    const/4 v4, 0x1

    aget v8, v34, v4

    move-object/from16 v4, v29

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v33

    if-eqz v33, :cond_3

    const/16 v24, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    aget v4, v34, v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanX:I

    const/4 v4, 0x1

    aget v4, v34, v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v4, 0x0

    aget v18, v9, v4

    const/4 v4, 0x1

    aget v19, v9, v4

    const/16 v20, 0x0

    move-object/from16 v14, v26

    move-wide/from16 v15, v21

    move/from16 v17, v10

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/SamsungWidgetView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v5}, Lcom/android/launcher2/SamsungWidgetView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    if-ne v4, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    :goto_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_5

    const-string v4, "add_widgets"

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0083

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    new-instance v25, Landroid/os/Handler;

    invoke-direct/range {v25 .. v25}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/HomeView$23;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/HomeView$23;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v5, 0x7d0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3
.end method

.method private addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    .locals 32

    new-instance v26, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v29, v0

    const-string v5, "SurfaceWidgetFlow"

    const-string v6, "making surface widget on drop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->container:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mScreen:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetItem;->getDefSpans()[I

    move-result-object v23

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetItem;->getResizeSpans()[I

    move-result-object v27

    move-object/from16 v0, v29

    iget v5, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v30, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->spanX:I

    aput v6, v30, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->spanY:I

    aput v6, v30, v5

    sget-boolean v5, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    const-string v5, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding surface width cells wide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v30, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cells tall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v30, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->dropPos:[I

    move-object/from16 v31, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellX:I

    if-ltz v5, :cond_4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellY:I

    if-ltz v5, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellX:I

    aput v6, v9, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellY:I

    aput v6, v9, v5

    const/16 v24, 0x1

    :cond_2
    :goto_1
    if-nez v24, :cond_6

    new-instance v12, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v5, 0x0

    aget v13, v30, v5

    const/4 v5, 0x1

    aget v14, v30, v5

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v24

    iget v10, v12, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    const/4 v5, 0x0

    iget v6, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v6, v9, v5

    const/4 v5, 0x1

    iget v6, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v6, v9, v5

    iget-boolean v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    :cond_3
    if-nez v24, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v31, :cond_2

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    aget v5, v31, v5

    const/4 v6, 0x1

    aget v6, v31, v6

    const/4 v7, 0x0

    aget v7, v30, v7

    const/4 v8, 0x1

    aget v8, v30, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v28

    if-eqz v28, :cond_5

    const/16 v24, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanX:I

    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v5, 0x0

    aget v18, v9, v5

    const/4 v5, 0x1

    aget v19, v9, v5

    const/16 v20, 0x0

    move-object/from16 v14, v26

    move-wide/from16 v15, v21

    move/from16 v17, v10

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    new-instance v6, Lcom/android/launcher2/HomeView$24;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1, v4}, Lcom/android/launcher2/HomeView$24;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/SurfaceWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-ne v5, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    :goto_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_7

    const-string v5, "add_widgets"

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0083

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    new-instance v25, Landroid/os/Handler;

    invoke-direct/range {v25 .. v25}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher2/HomeView$25;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/HomeView$25;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v6, 0x7d0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3
.end method

.method private adjustAppsAndPhoneBtnsForTB(I)V
    .locals 4

    const v3, 0x7f0c0247

    const v2, 0x7f0c0246

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Utilities;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/HomeView;->adjustAppsAndPhoneBtnsMargins(Landroid/content/res/Resources;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/HomeView;->adjustAppsAndPhoneBtnsMargins(Landroid/content/res/Resources;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Utilities;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/HomeView;->adjustAppsAndPhoneBtnsMargins(Landroid/content/res/Resources;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/HomeView;->adjustAppsAndPhoneBtnsMargins(Landroid/content/res/Resources;II)V

    goto :goto_0
.end method

.method private adjustAppsAndPhoneBtnsMargins(Landroid/content/res/Resources;II)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    if-ne v2, v0, :cond_0

    aget v0, p3, v1

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    if-ne v2, v0, :cond_1

    aget v0, p3, v3

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v0, p4, v4

    if-eq v2, v0, :cond_2

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_3

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v0, p4, v5

    if-eq v2, v0, :cond_3

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_3
    return-void
.end method

.method private closeQuickViewWorkspaceStartAnimation()V
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v7, 0x168

    const/4 v6, 0x2

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isSecretQuickViewMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    return v11

    :pswitch_1
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Landroid/content/Intent;JIII)V

    const/4 v11, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-static {v0, p1}, Lcom/android/launcher2/HomeView;->copyPendingAddToHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeView$PendingAddArguments;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, v10, v0}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V

    const/4 v11, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v25

    if-nez v25, :cond_1

    sget-boolean v3, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.HomeView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App widget info is null. AppWidgetID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v31, v0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v9, v31, v3

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v9, v31, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v33, v0

    const/16 v26, 0x0

    if-eqz v8, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v3, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v9, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v9, v13, v3

    const/16 v26, 0x1

    :cond_2
    :goto_1
    if-nez v26, :cond_7

    new-instance v16, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/4 v3, 0x0

    aget v17, v31, v3

    const/4 v3, 0x1

    aget v18, v31, v3

    const/16 v19, 0x0

    move v14, v7

    invoke-static/range {v13 .. v19}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v26

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v9, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v9, v13, v3

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    :cond_3
    if-nez v26, :cond_7

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    new-instance v3, Lcom/android/launcher2/HomeView$16;

    const-string v9, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v9, v1}, Lcom/android/launcher2/HomeView$16;-><init>(Lcom/android/launcher2/HomeView;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView$16;->start()V

    goto/16 :goto_0

    :cond_4
    if-eqz v33, :cond_2

    const/4 v3, 0x0

    aget v9, v33, v3

    const/4 v3, 0x1

    aget v10, v33, v3

    const/4 v3, 0x0

    aget v11, v31, v3

    const/4 v3, 0x1

    aget v12, v31, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v30

    if-eqz v30, :cond_5

    const/16 v26, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v26, 0x0

    goto :goto_2

    :cond_6
    const/4 v7, -0x1

    goto :goto_1

    :cond_7
    new-instance v18, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    const/4 v3, 0x0

    aget v3, v31, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    const/4 v3, 0x1

    aget v3, v31, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_b

    move-object/from16 v32, p2

    check-cast v32, Lcom/android/launcher2/HomePendingWidget;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/4 v3, 0x0

    aget v22, v13, v3

    const/4 v3, 0x1

    aget v23, v13, v3

    const/16 v24, 0x0

    move-wide/from16 v19, v5

    move/from16 v21, v7

    invoke-static/range {v17 .. v24}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v9, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v25

    iget-object v9, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v28

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v28

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v28

    iget v11, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v9, Lcom/android/launcher2/HomeView$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1, v8}, Lcom/android/launcher2/HomeView$17;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v9, v10, v3, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    const/16 v34, 0x1

    :goto_4
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v9, 0x1000000

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    if-eqz v34, :cond_8

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    :cond_8
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/HomeView;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_9
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "add_widgets"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v9, 0x7f0f0083

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    new-instance v27, Landroid/os/Handler;

    invoke-direct/range {v27 .. v27}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/HomeView$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/HomeView$18;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v9, 0x7d0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_5
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/launcher2/HomeView$19;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/launcher2/HomeView$19;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v3, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_c

    move-object/from16 v32, p2

    check-cast v32, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeWidgetItem;->calcResizeSpan(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_3

    :cond_d
    const/16 v34, 0x0

    goto/16 :goto_4

    :cond_e
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "resize_widgets"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    goto :goto_5
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 7

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto :goto_0
.end method

.method private static copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/HomeItem;)V
    .locals 2

    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    iget-boolean v0, p1, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->isSecretItem:Z

    return-void
.end method

.method private static copyPendingAddToHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeView$PendingAddArguments;)V
    .locals 2

    iget-wide v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iget-boolean v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->isSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    return-void
.end method

.method private copySpans([I[I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    array-length v0, p2

    if-ne v0, v2, :cond_0

    array-length v0, p1

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad array passed to copySpans src "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") dst "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v1, p1, Lcom/android/launcher2/HomePendingWidget;->container:J

    iput-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->dropPos:[I

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v1, p1, Lcom/android/launcher2/HomePendingWidget;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    return-void
.end method

.method private createWorkspaceChildren()V
    .locals 10

    const/4 v9, -0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030058

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v0, v3}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    if-ltz v1, :cond_3

    if-lt v1, v4, :cond_4

    :cond_3
    if-gez v1, :cond_5

    move v1, v6

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    return-void

    :cond_5
    add-int/lit8 v1, v4, -0x1

    goto :goto_2
.end method

.method public static findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z
    .locals 10

    if-nez p3, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v8, p2

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    const/4 v8, -0x1

    if-ne p1, v8, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p1

    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_3

    array-length v8, p0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    :cond_3
    const/4 v8, 0x2

    new-array p0, v8, [I

    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    move v3, p1

    :goto_1
    if-lt v3, v1, :cond_5

    const/4 v3, 0x0

    const/4 v6, 0x1

    :cond_5
    if-eqz v6, :cond_7

    if-lt v3, p1, :cond_7

    :goto_2
    if-nez v5, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v4

    const/high16 v8, -0x80000000

    if-eq v4, v8, :cond_6

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, p0, v8, v9}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v4, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    const/4 v5, 0x1

    :cond_6
    iget-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v8, :cond_0

    if-eqz p6, :cond_0

    invoke-static {p2}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v7, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v8, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_9

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, p0, p4, p5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v3, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    const/4 v5, 0x1

    if-ne v3, p1, :cond_8

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2

    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private onAppWidgetReset()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    :cond_0
    return-void
.end method

.method private performOnHomePressed(Z)V
    .locals 8

    const v7, 0x7f09008f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "Launcher.HomeView"

    const-string v3, "performOnHomePressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-boolean v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->closeFolder()V

    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v4}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_6
    :goto_2
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_2
.end method

.method private reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-wide/16 v1, -0x64

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v1

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iget-boolean v1, p5, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p4, v3, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p5, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p4, v3}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method private registerContentObservers()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string v2, "skt_phone20_settings"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    return-void
.end method

.method private restoreState(Lcom/android/launcher2/HomeView$SavedState;)V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    if-le v0, v13, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_1
    iget-wide v3, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    iget v5, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    const-wide/16 v11, -0x1

    cmp-long v8, v3, v11

    if-eqz v8, :cond_3

    if-le v5, v13, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide v3, v8, Lcom/android/launcher2/HomeItem;->container:J

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v5, v8, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v8, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    if-ne v8, v9, :cond_7

    move v8, v9

    :goto_1
    iput-boolean v8, v11, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    iget v1, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    iget v2, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    if-eq v13, v1, :cond_2

    if-eq v13, v2, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v11, 0x2

    new-array v11, v11, [I

    iput-object v11, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v8, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aput v1, v8, v10

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v8, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aput v2, v8, v9

    :cond_2
    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    :cond_3
    iget-object v8, p1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v8, :cond_4

    iget v6, p1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v7, p1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    :cond_5
    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, v8, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorPreviewManager;->layoutPageIndicator()V

    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    :cond_6
    iput-boolean v10, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    goto/16 :goto_0

    :cond_7
    move v8, v10

    goto :goto_1
.end method

.method private sendAdvanceMessage(J)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    return-void
.end method

.method private setupHomeViewAfterRotationForTB(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->repositionOpenFolder()V

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->adjustAppsAndPhoneBtnsForTB(I)V

    new-instance v1, Lcom/android/launcher2/HomeView$30;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$30;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupViews()V
    .locals 14

    const/4 v13, 0x0

    const v12, 0x7f0c0091

    const/16 v11, 0x3035

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090079

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Workspace;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    const v7, 0x7f0900c5

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/QuickViewWorkspace;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const v7, 0x7f0900c6

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/QuickViewDragBar;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    const v7, 0x7f0900c7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    const v7, 0x7f09007c

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v7, 0x7f090078

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v7

    sput-object v7, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const v7, 0x7f09007b

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Hotseat;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    :cond_0
    sget-boolean v7, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v7, :cond_8

    const v7, 0x7f090081

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    const v7, 0x7f090082

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object v13, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v7, :cond_5

    const v7, 0x7f0f00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.android.contacts"

    const-string v8, "com.android.dialer.DialtactsActivity"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "DCM"

    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.samsung.contacts"

    const-string v8, "com.android.dialer.DialtactsActivity"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "KOREA"

    invoke-static {}, Lcom/android/launcher2/Launcher;->readCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "LAUNCHER_PHONE_BUTTON"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    new-instance v8, Lcom/android/launcher2/HomeView$3;

    invoke-direct {v8, p0}, Lcom/android/launcher2/HomeView$3;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    new-instance v8, Lcom/android/launcher2/HomeView$4;

    invoke-direct {v8, p0, v3}, Lcom/android/launcher2/HomeView$4;-><init>(Lcom/android/launcher2/HomeView;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    sget-object v8, Lcom/android/launcher2/FocusHelper;->HOME_SOFTKEY_PHONE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const v8, 0x7f0f0013

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    new-instance v8, Lcom/android/launcher2/HomeView$5;

    invoke-direct {v8, p0}, Lcom/android/launcher2/HomeView$5;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    new-instance v8, Lcom/android/launcher2/HomeView$6;

    invoke-direct {v8, p0}, Lcom/android/launcher2/HomeView$6;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    sget-object v8, Lcom/android/launcher2/FocusHelper;->HOME_SOFTKEY_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/HomeView;->adjustAppsAndPhoneBtnsForTB(I)V

    :cond_8
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->setup(Lcom/android/launcher2/HomeView;)V

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_9

    const v7, 0x7f09007a

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v8, 0x7f090076

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v8, 0x7f09004f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v7, 0x7f090041

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeEditBar;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_c

    const v7, 0x7f09007f

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const v8, 0x7f0f00ca

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_a
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v7, 0x7f090083

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const v7, 0x7f09007e

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    if-eqz v7, :cond_d

    const v7, 0x7f090087

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f090089

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->SearchButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    sget-object v8, Lcom/android/launcher2/FocusHelper;->GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v7, 0x7f09008a

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mVoiceSearchView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mVoiceSearchView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->VoiceSearchButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mVoiceSearchView:Landroid/view/View;

    sget-object v8, Lcom/android/launcher2/FocusHelper;->GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->setTabletHotseat()V

    :cond_d
    const v7, 0x7f09008b

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mMyFilesView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mMyFilesView:Landroid/view/View;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mMyFilesView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->MyFilesButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/HomeView;)V

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->createWorkspaceChildren()V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    :cond_f
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    :cond_10
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    :cond_11
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    :cond_12
    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private setupWorkspaceScreenForTB(Landroid/view/ViewGroup$MarginLayoutParams;I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 4

    const v3, 0x7f0c01aa

    const v2, 0x7f0c006f

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Utilities;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0
.end method

.method public static showNoRoomAnyPageMessage(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showOutOfSpaceMessage(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeView;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateMarginForTB()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v3

    const v5, 0x7f0c0075

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    invoke-virtual {v1, v4, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_0

    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeView;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c0238

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x7f0c0237

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v3, :cond_0

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public HelpAppAddwidget()Lcom/android/launcher2/HomeWidgetItem;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    const/4 v2, 0x2

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    const/16 v20, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v20, "com.sec.android.app.sbrowser"

    const-string v13, "com.sec.android.app.sbrowser.BookmarkThumbnailWidgetProvider"

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v2, 0x207

    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :goto_1
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    :cond_0
    const-string v20, "com.sec.android.widgetapp.SPlannerAppWidget"

    const-string v13, "com.sec.android.widgetapp.SPlannerAppWidget.AgendaWidget.CalendarAppWidgetProvider"

    :cond_1
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    const/4 v2, -0x1

    if-ne v10, v2, :cond_3

    const/4 v3, 0x0

    :goto_2
    return-object v3

    :cond_2
    const-string v20, "com.android.chrome"

    const-string v13, "com.google.android.apps.chrome.appwidget.bookmarks.BookmarkThumbnailWidgetProvider"

    goto :goto_0

    :catch_0
    move-exception v14

    const/16 v19, 0x0

    goto :goto_1

    :cond_3
    new-instance v17, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v17 .. v17}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v11

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/appwidget/AppWidgetProviderInfo;

    :cond_4
    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v10}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    move/from16 v0, v22

    iput v0, v3, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    const/4 v2, 0x0

    aget v2, v12, v2

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    const/4 v2, 0x1

    aget v2, v12, v2

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v2, 0x3

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    const/4 v2, 0x3

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-nez v2, :cond_7

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v10, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v18

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    :cond_8
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v4, 0x1000000

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v4, 0x0

    const/16 v5, 0xde

    aput v5, v2, v4

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v4, 0x0

    const/16 v5, 0x113

    aput v5, v2, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/launcher2/HomeView$22;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$22;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomePendingWidget;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    return-void
.end method

.method public addHelpAppPage()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumFestivalPages()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->addPage()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public addItemToHomeScreen()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    const/4 v1, 0x2

    new-array v15, v1, [I

    fill-array-data v15, :array_0

    new-instance v9, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.popupcalculator"

    const-string v3, "com.sec.android.app.popupcalculator.Calculator"

    invoke-direct {v9, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    :try_start_0
    const-string v1, "com.sec.android.app.popupcalculator"

    const/16 v3, 0x207

    invoke-virtual {v13, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_1
    if-eqz v14, :cond_2

    iget-object v1, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    :cond_2
    new-instance v9, Landroid/content/ComponentName;

    const-string v1, "com.samsung.helphub"

    const-string v3, "com.samsung.helphub.HelpHubActivity"

    invoke-direct {v9, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v12, Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    invoke-direct {v12, v9, v1}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v2

    new-instance v2, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v2, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    new-instance v16, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v11}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v2, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    const/4 v1, 0x0

    iput v1, v2, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const-wide/16 v3, -0x64

    iput-wide v3, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const/4 v1, 0x0

    aget v1, v15, v1

    iput v1, v2, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    const/4 v1, 0x1

    aget v1, v15, v1

    iput v1, v2, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    iput-object v11, v2, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v3, -0x64

    iget v5, v2, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v6, v2, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v7, v2, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const/4 v14, 0x0

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public addPage()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030058

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->addSamsungWidget(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.HomeView"

    const-string v3, "Problem binding samsung widget. This should only happen when running in a separate process"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Widget is not running in the same process"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public addShortcutItemsIntoExistingFolder(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-wide v2, v9, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    iget v7, v1, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    invoke-virtual {v9, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    :cond_1
    return-void
.end method

.method public addShortcutItemsIntoNewFolder(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-wide v2, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-wide v2, v10, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v10}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    iget v7, v1, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    invoke-virtual {v10, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v3, v10, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    :cond_1
    return-void
.end method

.method public addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.HomeView"

    const-string v3, "Problem binding surface widget. This should only happen when running in a separate process"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Widget is not running in the same process"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/HomeView$15;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$15;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 24

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    :cond_0
    const-string v19, "Launcher.HomeView"

    const-string v20, "Attempted to bind a widget larger than what will fit. Removing."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherApplication;

    const-string v19, "com.sec.android.app.launcher.prefs"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v19, "delelteFrombindAppWidget"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v19, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "Launcher.HomeView"

    const-string v20, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    const-string v19, "com.sec.android.app.launcher.prefs"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PrefsPreSecret"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    if-nez v7, :cond_6

    sget-boolean v19, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v19, :cond_2

    const-string v19, "Launcher.HomeView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "App widget info is null. AppWidgetID = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    const-string v19, "Launcher.HomeView"

    const-string v20, "mAppWidgetHost is null. Was HomeView.onDetachedFromWindow() called previously?"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual/range {v19 .. v20}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move/from16 v19, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move/from16 v20, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move/from16 v21, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move/from16 v22, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    const/high16 v20, 0x1000000

    invoke-virtual/range {v19 .. v20}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0
.end method

.method public bindFolders(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeFolderItem;->normalize(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->restoreOpenFolder(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public bindHomeDeleteFestivalPage()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "Launcher.HomeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindHomeDeleteFestivalPage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_2
    return-void
.end method

.method public bindHomeDeleteSecretPage()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    sub-int/2addr v1, v4

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1
.end method

.method public bindHomeInsertFestivalPage()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v3

    array-length v8, v4

    const/4 v7, -0x1

    const/4 v2, -0x1

    sget-boolean v9, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v9

    add-int/2addr v0, v9

    :cond_2
    sget-boolean v9, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v9, :cond_3

    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage toBeCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " festivalDayList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-le v8, v3, :cond_4

    move v8, v3

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v9, v4, v6

    if-nez v9, :cond_6

    :cond_5
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage currentPageCount [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0

    :cond_6
    add-int v7, v0, v6

    aget-object v9, v4, v6

    invoke-static {v9}, Lcom/android/launcher2/FestivalPageManager;->getFestivalType(Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v2, v10}, Lcom/android/launcher2/Workspace;->insertWorkspaceFestivalScreen(IIZ)Lcom/android/launcher2/CellLayout;

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x1

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x2

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x3

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage festivalName [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ]  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fesivalKey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public bindHomeInsertSecretPage()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_1
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->updateShortcutsAndSurfaceWidgets(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public bindHotseat(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher2/Hotseat;->normalizeContents(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllItems()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->beginBind(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->endBind()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-wide v3, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/launcher2/HomeView$33;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v4, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 9

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v2

    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const-string v7, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Samsung widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v2, v6, v1, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;Lcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;

    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/SamsungWidgetView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v7}, Lcom/android/launcher2/SamsungWidgetView;->setBackgroundColor(I)V

    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    iget v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 9

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->getThemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Surface widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "SurfaceWidgetFlow"

    const-string v7, "making surface widget for rebinding"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v1, v7, v8}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    iget-object v6, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v6, :cond_0

    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    iget v6, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_0
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->changeOrientationExtras()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    :cond_0
    return-void
.end method

.method public cancelClicksOnHome()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->cancelClicksOnChildrenForCurrentPage()V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cancelRemovePage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    return-void
.end method

.method public closeHomeScreenOptions()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisibleHomeOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->exitHomeOptionMenu()V

    :cond_0
    return-void
.end method

.method public closeQuickViewWorkspace(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V

    return-void
.end method

.method public closeQuickViewWorkspace(ZZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5, p2}, Lcom/android/launcher2/QuickViewWorkspace;->close(Z)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v6, Lcom/android/launcher2/HomeView$29;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher2/HomeView$29;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/Workspace;->setPageVisibility(II)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->updateIndicatorWidth(Z)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->updateVisiblePages()I

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v5

    if-ne v2, v5, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v6, 0x4

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher2/SurfaceWidgetView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-boolean v5, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->startCocktailHelpService()V

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->updateMarginForTB()V

    goto :goto_0
.end method

.method closeSystemDialogs(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050005

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    return-void
.end method

.method completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz p1, :cond_0

    if-nez p6, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    :cond_0
    new-instance v5, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v5}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/16 p3, -0x64

    iget v10, v5, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    iget v11, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    iget v12, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    :goto_1
    const-wide/16 v2, -0x65

    cmp-long v2, p3, v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v22

    :goto_2
    const/16 v24, 0x0

    if-eqz v22, :cond_8

    new-instance v7, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/launcher2/HomeFolderItem;->viewForThisHasSeenLightOfDayBefore:Z

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/launcher2/HomeFolderItem;->mSecretItem:Z

    :cond_3
    const/4 v13, 0x0

    move-object v6, v4

    move-wide/from16 v8, p3

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v4, v0}, Lcom/android/launcher2/HomeFolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    invoke-virtual {v7, v2}, Lcom/android/launcher2/HomeFolderItem;->setFolderColor(I)V

    if-eqz p1, :cond_6

    if-eqz p5, :cond_5

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v2, v8

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v26

    :cond_4
    :goto_3
    if-eqz v26, :cond_5

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_5
    iget-wide v2, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    iget-wide v15, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v21, v0

    move-object v13, v4

    move-object/from16 v14, p1

    invoke-static/range {v13 .. v21}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    :cond_6
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v10, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    const/16 v24, 0x1

    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_8

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3, v7}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {v2, v3}, Lcom/android/launcher2/CellPositioner;->addDelta(Lcom/android/launcher2/PositionDelta;)V

    :cond_8
    if-nez v24, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    :cond_9
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0083

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/HomeView$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$13;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x384

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 p3, v0

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v2, v2, v8

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_3

    :cond_d
    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v25

    if-eqz v25, :cond_e

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    :cond_e
    sget-boolean v2, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v2, :cond_4

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeAddFolderWithShortcutItem. removeItem is true but container "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is unknown"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/HomeView$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$14;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x12c

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V
    .locals 36

    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-gez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v3, v3, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher2/HomeShortcutItem;->mSecretItem:Z

    move/from16 v7, p4

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher2/HomeShortcutItem;->mSecretItem:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v3

    add-int/2addr v7, v3

    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    move-object/from16 v3, p0

    move-wide/from16 v5, p2

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    const/16 v27, 0x0

    if-eqz v4, :cond_5

    if-ltz p5, :cond_3

    if-ltz p6, :cond_3

    const/4 v3, 0x0

    aput p5, v13, v3

    const/4 v3, 0x1

    aput p6, v13, v3

    const/16 v27, 0x1

    :cond_1
    :goto_0
    if-nez v27, :cond_8

    const-wide/16 v5, -0x64

    cmp-long v3, p2, v5

    if-eqz v3, :cond_6

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v34, :cond_1

    const/4 v3, 0x0

    aget v9, v34, v3

    const/4 v3, 0x1

    aget v10, v34, v3

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v31

    if-eqz v31, :cond_4

    const/16 v27, 0x1

    :goto_2
    goto :goto_0

    :cond_4
    const/16 v27, 0x0

    goto :goto_2

    :cond_5
    const/16 p4, -0x1

    goto :goto_0

    :cond_6
    new-instance v16, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v14, p4

    invoke-static/range {v13 .. v19}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v27

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    move/from16 p4, v0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v5, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v5, v13, v3

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    :cond_7
    if-eqz v27, :cond_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/4 v3, 0x0

    aget v22, v13, v3

    const/4 v3, 0x1

    aget v23, v13, v3

    const/16 v24, 0x0

    move-object/from16 v18, p1

    move-wide/from16 v19, p2

    move/from16 v21, p4

    invoke-static/range {v17 .. v24}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v3, :cond_9

    const-wide/16 v5, -0x65

    cmp-long v3, p2, v5

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v3, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aget v19, v13, v3

    const/4 v3, 0x1

    aget v20, v13, v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v22, v0

    move-object/from16 v18, p1

    move/from16 v23, p4

    move-wide/from16 v24, p2

    invoke-virtual/range {v17 .. v25}, Lcom/android/launcher2/CellLayoutHotseat;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    :cond_9
    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/CellLayout;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, v3, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v5, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    if-ne v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->setContentIsRefreshable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v0, v5}, Lcom/android/launcher2/Workspace;->invalidatePageData(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v33

    const/4 v3, 0x3

    move/from16 v0, v33

    if-le v0, v3, :cond_e

    const/16 v32, 0x0

    move/from16 v26, v33

    add-int/lit8 v3, v33, -0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_b

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v3, :cond_b

    const/16 v32, 0x1

    :cond_b
    move/from16 v28, v32

    :goto_4
    add-int/lit8 v3, p4, -0x1

    move/from16 v0, v28

    if-ge v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0, v5}, Lcom/android/launcher2/Workspace;->syncPageItems(IZ)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    :cond_c
    if-nez p4, :cond_d

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v3, :cond_d

    add-int/lit8 v26, v33, -0x1

    :cond_d
    add-int/lit8 v28, p4, 0x2

    :goto_5
    move/from16 v0, v28

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0, v5}, Lcom/android/launcher2/Workspace;->syncPageItems(IZ)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->setContentIsRefreshable(Z)V

    :goto_6
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    const/16 v35, 0x1

    :goto_7
    if-eqz v35, :cond_9

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_6

    :cond_11
    const/16 v35, 0x0

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v29

    if-eqz v29, :cond_2

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_2

    check-cast v29, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v24, 0x0

    move-object/from16 v18, p1

    move-wide/from16 v19, p2

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, p5

    invoke-static/range {v17 .. v24}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_1
.end method

.method createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, p2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v3, p1, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-boolean v3, v3, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "addapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0083

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sput-boolean v6, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/HomeView$12;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeView$12;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    new-instance v2, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v2, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step3()V

    :cond_2
    return-object v0
.end method

.method public deletePage(I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    :goto_2
    if-ltz v4, :cond_5

    invoke-virtual {v9, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v15, v12, Lcom/android/launcher2/Folder;

    if-eqz v15, :cond_2

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    instance-of v15, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v15, :cond_4

    move-object v13, v7

    check-cast v13, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v1, :cond_3

    iget v15, v13, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v15}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15, v7}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    :cond_4
    instance-of v15, v7, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v15, :cond_3

    const-string v15, "SurfaceWidgetFlow"

    const-string v16, "destroying surface widget with delete page"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v7

    check-cast v15, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    sget-object v17, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_4

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_7

    move/from16 v0, p1

    if-gt v4, v0, :cond_6

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v8, v15, v10}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    goto :goto_6

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15, v10}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15, v11}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v15

    if-gt v14, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v16, v14, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    :goto_7
    return-void

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    goto :goto_7
.end method

.method public deleteWidgetFestivalPage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v1, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v2, :cond_0

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteWidgetIFestivalPage appWidgetId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget v3, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    return-void
.end method

.method public determineEmptyPageMsgVisibility(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    sput-boolean v3, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    :cond_1
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    sput-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    const-string v0, "Launcher.HomeView"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public exitHomeOptionMenu()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHotseat(I)V

    return-void
.end method

.method public findItemById(J)Lcom/android/launcher2/HomeItem;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    iget-object v4, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    check-cast v3, Lcom/android/launcher2/HomeItem;

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeView$PendingAddArguments;

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method getAllAppsIcon()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2

    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCreateFolderColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    return-void
.end method

.method public getCurrentDragItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getDarkenView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    return-object v0
.end method

.method getEditBar()Lcom/android/launcher2/HomeEditBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-object v0
.end method

.method public getGoogleSearchView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    return-object v0
.end method

.method getHomeAppsBtn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    return-object v0
.end method

.method public getHomeBottomBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    return-object v0
.end method

.method getHomeContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    return-object v0
.end method

.method getHomeDarkenLayer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditBtn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditTitleBar()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getHomePhoneBtn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    return-object v0
.end method

.method public getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    if-nez v0, :cond_0

    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getHotseatItemcount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getNumFestivalPages()I
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPage(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    return-void
.end method

.method public getPagesTop()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getPanelBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    return v0
.end method

.method public getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getQuickLaunch()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method getTopBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public getWorkspaceLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    return v0
.end method

.method public goHomeOptionMenu()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHotseat(I)V

    return-void
.end method

.method public handleResizeWidget()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    sget v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    const-string v3, "resize_widgets"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0078

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/HomeView$32;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeView$32;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public helpHubSnapToLastPage()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    return-void
.end method

.method public hideHomeBottomBar()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method hideHotseat(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isDeleteWorkScreenPopup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    return v0
.end method

.method public isEnableCocktailHelpService()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v4, "com.samsung.android.app.cocktailbarservice"

    const-string v1, "com.samsung.android.app.cocktailbarservice.help.FirstTimeHelpDialogService"

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v7, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method public isFolderPage(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeItem(I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleHomeOptionMenu()Z
    .locals 2

    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 8

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/launcher2/WorkspacePages;->movePage(IILandroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    if-ne v2, p1, :cond_3

    move v5, p2

    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    if-ltz v1, :cond_2

    if-ne v2, v1, :cond_2

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v7

    sub-int/2addr v5, v7

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    const/4 v1, -0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-le v2, p1, :cond_4

    if-gt v2, p2, :cond_4

    add-int/lit8 v5, v2, -0x1

    goto :goto_2

    :cond_4
    if-ge v2, p1, :cond_2

    if-lt v2, p2, :cond_2

    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-ne p2, v8, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    new-instance v2, Lcom/android/launcher2/HomeView$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/launcher2/HomeView$PendingAddArguments;-><init>(Lcom/android/launcher2/HomeView$1;)V

    iput p1, v2, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    iput-object p3, v2, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-static {v2, v4}, Lcom/android/launcher2/HomeView;->copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v0, v4, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tempScreen"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "tempCellX"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "tempCellY"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "tempSpanX"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "tempSpanY"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    goto :goto_0

    :cond_2
    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_0

    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    :cond_4
    const/16 v4, 0xa

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    if-ne p2, v8, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onFadeEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_2

    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_0
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher2/Hotseat;

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v1, v5, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const/4 v5, 0x2

    new-array v3, v5, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, p1, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    if-ne p1, v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->onClickEditButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 4

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const/4 v1, 0x0

    new-instance v1, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    check-cast v1, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v1}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    goto :goto_0

    :cond_5
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.launcher.action.USE_EXPAND_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    goto :goto_0
.end method

.method public onClickAlwaysButton(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickEditButton(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    :cond_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Launcher.HomeView"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItems()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    iput-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v1}, Lcom/sec/dtl/launcher/WallpaperScroller;->shutdown()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.HomeView"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    new-instance v1, Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;-><init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->setupViews()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    const-string v0, "Launcher.HomeView"

    const-string v1, "OnFinishInflate() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 7

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V

    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v2, Lcom/android/launcher2/HomeView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$2;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v10, :cond_0

    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v7, v8, :cond_4

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    const/4 v7, -0x1

    if-le v2, v7, :cond_1

    if-ge v2, v1, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v7, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    sget-object v7, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sget-object v8, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->isPointInFrame(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    :cond_1
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-nez v7, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_3

    const-string v7, "resize_widgets"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sput-boolean v10, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f0078

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher2/HomeView$31;

    invoke-direct {v7, p0}, Lcom/android/launcher2/HomeView$31;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/4 v6, 0x1

    :cond_4
    return v6
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    sget-boolean v7, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->updateMarginForTB()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sget-boolean v7, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v6

    sget v7, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    if-eq v7, v6, :cond_1

    sput v6, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    invoke-direct {p0, v6}, Lcom/android/launcher2/HomeView;->setupHomeViewAfterRotationForTB(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v7, v2, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v7, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/HomeView$LayoutParams;

    iget-boolean v7, v4, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    if-eqz v7, :cond_2

    iget v7, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v10, v4, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v11, v4, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getRootView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    :cond_4
    sget-object v7, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v7}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    :cond_5
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-boolean v11, v6, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "change_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "add_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "resize_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "remove_items"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "move_app"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v11, :cond_6

    move-object v11, v10

    check-cast v11, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.google.android.apps.chrome.appwidget.bookmarks.BookmarkThumbnailWidgetProvider"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    check-cast v10, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.sec.android.app.sbrowser.BookmarkThumbnailWidgetProvider"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_3
    const/4 v8, 0x0

    new-instance v8, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v8, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {v8}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    instance-of v11, v10, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v11, :cond_4

    move-object v11, v10

    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object v11, v10

    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.sec.android.app.popupcalculator.Calculator"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.samsung.helphub.HelpHubActivity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "remove_items"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v8, 0x0

    new-instance v8, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    move-object v11, v8

    check-cast v11, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    check-cast v8, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {v8}, Lcom/android/launcher2/guide/RemoveItemsGuider;->showHelpDialog2()V

    goto :goto_1

    :cond_8
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "move_app"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x0

    new-instance v8, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    move-object v11, v8

    check-cast v11, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    check-cast v8, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {v8}, Lcom/android/launcher2/guide/MoveAppsGuider;->showHelpDialog_step2()V

    goto :goto_1

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-nez v11, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_b
    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v11, :cond_c

    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_c

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v9

    instance-of v11, v9, Lcom/android/launcher2/Hotseat;

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "Launcher.HomeView"

    const-string v12, "Hotseat item long click but we do nothing in normal mode"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    const/4 v7, 0x0

    const/4 v4, 0x0

    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_e

    move-object v5, p1

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v7, :cond_d

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object v4, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_f
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_11

    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    goto :goto_2

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_12

    if-nez v4, :cond_12

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_12
    sget-boolean v11, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v11, :cond_14

    sget-boolean v11, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    sget-boolean v11, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v11, :cond_13

    const-string v11, "Launcher.HomeView"

    const-string v12, "-----Skip long click on festival page "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_14
    if-eqz v0, :cond_19

    sget-object v11, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v12, "Launcher_touch"

    invoke-virtual {v11, v12}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    sget-object v11, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v12, "Launcher_touch"

    invoke-virtual {v11, v12}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    if-nez v4, :cond_1b

    iget-boolean v11, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    if-nez v11, :cond_1b

    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_18

    :cond_15
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_1a

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "change_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v8, 0x0

    new-instance v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    move-object v11, v8

    check-cast v11, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    check-cast v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {v8}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->showHelpDialog_step1()V

    :cond_16
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "remove_items"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "create_folder"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "move_app"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "resize_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "add_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "change_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget v11, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    const/4 v11, 0x2

    sput v11, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    :cond_17
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "add_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "DaliLogs"

    const-string v12, "addwidgets"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    new-instance v8, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    move-object v11, v8

    check-cast v11, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    check-cast v8, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v8}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step1()V

    :cond_18
    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    :goto_4
    sget-object v11, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v11}, Landroid/os/DVFSHelper;->release()V

    :cond_19
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto :goto_3

    :cond_1b
    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v11, :cond_1c

    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v11, :cond_1c

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_1c

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0f010c

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_1c
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v11, v4}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    goto :goto_4
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/SecretPageManager;->getPageSwitchBySecretMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SecretPageManager;->setPageSwitchBySecretMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Launcher.HomeView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeHoverScrollHandler()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspaceStartAnimation()V

    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher2/HomeView$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeView$SavedState;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeView;->restoreState(Lcom/android/launcher2/HomeView$SavedState;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Launcher.HomeView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Launcher;->setCoctailShift(ZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->startCocktailHelpService()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateWallpaperOffsets()V

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Launcher;->setCoctailShift(ZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    new-instance v1, Lcom/android/launcher2/HomeView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomeView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->saveOpenFolderState(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, v1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v6, -0x1

    if-le v3, v6, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v3, v3, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v5

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v4

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v4, v1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getDeletePageIndex()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    return-object v1

    :cond_4
    move v3, v5

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Launcher.HomeView"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Launcher.HomeView"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    if-ne p1, p0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iput-boolean v2, v1, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->startCocktailHelpService()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->clear()V

    goto :goto_0
.end method

.method openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
    .locals 13

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v10, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->updateMarginForTB()V

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v10, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :cond_6
    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p2, :cond_8

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenAnimation()V

    :cond_8
    sget-object v10, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v11, "Launcher_touch"

    invoke-virtual {v10, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    new-instance v8, Lcom/android/launcher2/HomeView$28;

    invoke-direct {v8, p0, v6}, Lcom/android/launcher2/HomeView$28;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v11, 0x2

    sget-object v12, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const-wide/16 v11, 0x190

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    const/4 v11, 0x2

    sget-object v12, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const-wide/16 v11, 0x190

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    const/4 v11, 0x2

    sget-object v12, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const-wide/16 v11, 0x190

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    const/4 v11, 0x2

    sget-object v12, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const-wide/16 v11, 0x190

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c
    sget-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_d
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->invalidate()V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v11, 0x80

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Workspace;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->bringToFront()V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    if-eqz p1, :cond_e

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->setAllPagesVisibility(I)V

    const/4 v4, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_12

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_11

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v10, :cond_f

    move-object v10, v9

    check-cast v10, Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/launcher2/SurfaceWidgetView;->onVisibilityChanged(Landroid/view/View;I)V

    check-cast v9, Lcom/android/launcher2/SurfaceWidgetView;

    const v10, 0x3f7d70a4

    invoke-virtual {v9, v10}, Lcom/android/launcher2/SurfaceWidgetView;->setAlpha(F)V

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_12
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->open()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :goto_4
    sget-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v10, :cond_13

    if-nez p2, :cond_13

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenNonAnimation()V

    :cond_13
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v11, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto/16 :goto_0

    :cond_14
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_4
.end method

.method processItemDropToNewFolder(Landroid/content/ComponentName;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    return-void
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[IZ)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-boolean p7, v1, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v2, p5, v3

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    return-void
.end method

.method public refreshQuickViewWorkspace(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method removeFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 3

    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removePage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    :cond_0
    return-void
.end method

.method public removehelpAppPage()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    iput v2, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    iput v2, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    goto :goto_1
.end method

.method public resetPanelViewport()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Landroid/os/Bundle;)Z
    .locals 12

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v9, "launcher.workspace_open_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v8, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0, v6, v5}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    return-void
.end method

.method public saveFestivalScreenInfo()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setFestivalScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v2, "launcher.workspace_open_folder_id"

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveScreenInfo()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/launcher2/SecretPageManager;->printWorkspaceInfo()V

    :cond_1
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->printWorkspaceInfo()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public saveSecretScreenInfo()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setSecretScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method public setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method public setDarkenViewAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method setDestinationNewFolderId(J)V
    .locals 0

    sput-wide p1, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    return-void
.end method

.method public setDummyPanelProperties()V
    .locals 13

    const/4 v12, -0x1

    const/high16 v11, 0x3f800000

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v7, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v1

    sget v9, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    sub-float v10, v11, v7

    invoke-static {v9, v1, v10}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v0

    invoke-virtual {v8, v0, v12}, Lcom/android/launcher2/Workspace;->setDummyPanelProperties(FI)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    if-eqz v6, :cond_0

    sub-float v9, v11, v7

    mul-float/2addr v9, v1

    invoke-virtual {v6, v9, v12}, Lcom/android/launcher2/MenuAppsGrid;->setDummyPanelProperties(FI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v11, :cond_2

    move v5, v9

    :goto_1
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v11, :cond_3

    move v4, v9

    :goto_2
    const/4 v2, 0x1

    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-nez v11, :cond_4

    move v3, v9

    :goto_3
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CRR: isWorkspaceNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHotseatNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAllAppsIconNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHomeContainerNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    move v3, v10

    goto :goto_3
.end method

.method public setEditBar(Lcom/android/launcher2/HomeEditBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-void
.end method

.method public setHomeEditItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHomeEditItem:Landroid/view/MenuItem;

    return-void
.end method

.method public setHomeScreenAt(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    return-void
.end method

.method public setHotseat(Lcom/android/launcher2/Hotseat;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method public setPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    return-void
.end method

.method public setPanelBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->setDummyPanelProperties()V

    return-void
.end method

.method public setPanelViewport(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    :cond_0
    return-void
.end method

.method public setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method public setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    return-void
.end method

.method public setTabletHotseat()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setVisibilityHomeOptionMenu(I)V
    .locals 3

    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_0
.end method

.method public setVisibilityHotseat(I)V
    .locals 2

    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setWorkspaceLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    return-void
.end method

.method public setupCameraCut(I)V
    .locals 2

    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method showAllApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_0
    return-void
.end method

.method public showCameraCut(ZZ)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    const/high16 v1, 0x7f040000

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const v1, 0x7f040001

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public showDeleteWorkScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public showHomeBottomBar()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showHotseat(Z)V
    .locals 3

    const/high16 v1, 0x3f800000

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    return-void
.end method

.method showWorkspace(Z)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Launcher;->setEnableHeadlines(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v2, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    return-void
.end method

.method showWorkspaceEditmode(Z)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setEnableHeadlines(Z)V

    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->closeFolder()V

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v2, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4

    const v3, 0x7f0f0011

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/AppItem;)V
    .locals 6

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v4, :cond_1

    const v2, 0x7f0f011a

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->abortConfigChanges()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    goto :goto_0
.end method

.method public startCocktailHelpService()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->mIgnoreCocktailHelp:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isEnableCocktailHelpService()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.cocktailbar.startHelpDialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method startWallpaper(I)V
    .locals 8

    const v7, 0x7f0f0011

    const/4 v6, 0x0

    const/16 v5, 0xa

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.wallpapers.WallpaperPickerActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    const-string v3, "mode"

    const-string v4, "Guide_Mode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v3, "mode"

    const-string v4, "null"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0xa

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateGlobalSearchIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateRunning()V
    .locals 11

    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateWallpaperOffsets()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4

    const/high16 v2, 0x100000

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wallpaperHack()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    return-void
.end method
