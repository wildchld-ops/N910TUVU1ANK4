.class public Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/cardholder/RecentsCallback;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$AppListItemGridViewHolder;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnTouchShortcutIcon;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;
    }
.end annotation


# static fields
.field private static final CONTROL_PANEL_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.controlpanel.activity.JobManagerActivity"

.field private static final CONTROL_PANEL_PACKAGE:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKED:Ljava/lang/String; = "recent_menukey_dialog_do_not_show"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKING:Ljava/lang/String; = "recent_menukey_dialog_do_not_show_checking"

.field static final DEBUG:Z = true

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern;

.field private static final RECENTSPANEL_CLOSE:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_CLOSE"

.field private static final RECENTSPANEL_OPEN:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_OPEN"

.field private static final SHOW_HELP_POPUP:I = 0x1

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"

.field private static final TASK_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

.field private static final TASK_MANAGER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RecentsPanelView"


# instance fields
.field private final APPLIST_DRAG_ZONE:I

.field private final APPLIST_LONG_PRESS:I

.field private final APPLIST_TIMER_LONG_PRESS:I

.field private DELAY_SHOW_RECENTMENU_HELPPOPUP:I

.field private final DOCKING_AREA_INVERSE_RATIO:F

.field private final ESTIMATE_INVALID_VALUE:S

.field private mAnimateIconOfFirstTask:Z

.field private mAppIconIndex:I

.field private mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentDownView:Landroid/view/View;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mFitThumbnailToXY:Z

.field private mFullGuideRect:Z

.field mGuideLineDragListener:Landroid/view/View$OnDragListener;

.field private mGuideLineLayout:Landroid/widget/ImageView;

.field private mGuideLineTopPos:I

.field private mHandler:Landroid/os/Handler;

.field protected mHasCocktailBar:Z

.field private mHighEndGfx:Z

.field private mIntent:Landroid/content/Intent;

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPenWindowOnly:Z

.field private mIsTaskManagerInstalled:Z

.field private mItemHeight:I

.field private mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

.field private mItemWidth:I

.field private mIvt:[B

.field private mListAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

.field private mLunchBlock:Z

.field private mMultiWindowCloseAnimating:Z

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowSettingObserver:Landroid/database/ContentObserver;

.field private mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

.field private mPenTopLandMargin:I

.field private mPenTopPortMargin:I

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPositionGuideline:Landroid/widget/ImageView;

.field private mRecentCurIndex:I

.field private mRecentHelpDialog:Landroid/app/AlertDialog;

.field private mRecentItemLayoutId:I

.field private mRecentPenWindowFakeView:Landroid/widget/ImageView;

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

.field private mRecentsButtons:Landroid/view/View;

.field private mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mSelectedPage:I

.field private mShadowHeight:I

.field private mShadowWidth:I

.field private mShortcutComponentNames:[Ljava/lang/String;

.field private mShowRecentApplicationShortCut:Z

.field private mShowing:Z

.field private mStatusBarHeight:I

.field protected mSupportFreestyleLaunch:Z

.field protected mSupportMultiInstance:Z

.field mTimerHandler:Landroid/os/Handler;

.field private mTriggerBy:I

.field mVibrator:Landroid/os/SystemVibrator;

.field private mWaitingForWindowAnimation:Z

.field private mWaitingToShow:Z

.field private mWindowAnimationStartTime:J

.field private mWindowManager:Landroid/view/WindowManager;

.field private misAvailableHelpHub:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->misAvailableHelpHub:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    iput-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    const v1, 0x3d8f5c29

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->DOCKING_AREA_INVERSE_RATIO:F

    iput v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I

    const/16 v1, 0xca

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->APPLIST_LONG_PRESS:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->APPLIST_TIMER_LONG_PRESS:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->APPLIST_DRAG_ZONE:I

    const/4 v1, -0x1

    iput-short v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->ESTIMATE_INVALID_VALUE:S

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIsPenWindowOnly:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowCloseAnimating:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mLunchBlock:Z

    iput v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mTriggerBy:I

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mTimerHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSupportMultiInstance:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSupportFreestyleLaunch:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHasCocktailBar:Z

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIvt:[B

    iput-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$6;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateValuesFromResources()V

    new-instance v1, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    new-instance v1, Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-direct {v1, v4, v5}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;-><init>(Landroid/content/Context;Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x111008b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHasCocktailBar:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "multiwindow_facade"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    sget-object v1, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentItemLayoutId:I

    invoke-static {p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isControlPanelInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIsTaskManagerInstalled:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiInstance(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSupportMultiInstance:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSupportFreestyleLaunch:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105000c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mStatusBarHeight:I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    const-string v1, "RecentsPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentsPanelView() : mShowRecentApplicationShortCut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->registerContentObserver()V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    move v1, v2

    goto/16 :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateUiElements()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showIfReady()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mTriggerBy:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppIconIndex:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private animateInIconOfFirstTask()V
    .locals 14

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v10}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->isFirstScreenful()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWindowAnimationStartTime:J

    sub-long/2addr v10, v12

    long-to-int v8, v10

    const/16 v6, 0x96

    const/4 v10, 0x0

    rsub-int v11, v8, 0x96

    const/16 v12, 0x96

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v2, 0xfa

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3fc00000

    invoke-direct {v1, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v10, 0x2

    new-array v0, v10, [Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    aput-object v11, v0, v10

    const/4 v10, 0x1

    iget-object v11, v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    aput-object v11, v0, v10

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    int-to-long v11, v7

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const-wide/16 v11, 0xfa

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    :cond_2
    return-void
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-void
.end method

.method private getActivityOptions(Landroid/view/View;)Landroid/os/Bundle;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    instance-of v4, v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v4, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-object v2

    :cond_2
    iget-object v4, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-static {v4, v0, v6, v6, v2}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0
.end method

.method private getHelpVersionCode()I
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->TPROJECT:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_1
    const-string v3, "STATUSBAR-RecentsPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHelpVersionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private isControlPanelInstalled()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.controlpanel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    const-string v3, "RecentsPanelView"

    const-string v4, "CONTROL_PANEL_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 9

    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    const-string v6, "RecentsPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method private isLaunchingBlockedItem(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isLaunchingBlockedItem(I)Z

    move-result v0

    return v0
.end method

.method private isTaskManagerInstalled()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.taskmanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    const-string v3, "RecentsPanelView"

    const-string v4, "TASK_MANAGER_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeRecentHelpPopup()V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->getHelpVersionCode()I

    move-result v1

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentPopupForAttTmo:Z

    if-eqz v5, :cond_3

    const v5, 0x7f04003b

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f08014c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f08014b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eq v1, v9, :cond_0

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->misAvailableHelpHub:Z

    if-nez v5, :cond_2

    :cond_0
    const v5, 0x7f0b024b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 v4, 0x5

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentPopupForAttTmo:Z

    if-eqz v5, :cond_4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f0b0245

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0224

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentPopupForAttTmo:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->misAvailableHelpHub:Z

    if-eqz v5, :cond_1

    if-eq v1, v9, :cond_1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x2

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b024c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recent/cardholder/RecentsPanelView$5;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$5;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_2
    const v5, 0x7f0b0247

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const v5, 0x7f04003a

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f0b0244

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showImpl(Z)V

    :cond_0
    return-void
.end method

.method private showImpl(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowing:Z

    if-eqz p1, :cond_6

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v1, :cond_4

    move v4, v3

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWaitingToShow:Z

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f050012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 3

    if-eqz p2, :cond_4

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    if-eqz p3, :cond_3

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f050012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method private updateUiElements()V
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0001

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onTaskLoadingCancelled()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->unregisterContentObserver()V

    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->unregisterContentObserver()V

    return-void
.end method

.method public dismissAndGoHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->unregisterContentObserver()V

    return-void
.end method

.method public dismissHelpPopup()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "dismissHelpPopup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getItemIndex(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSelectedPage:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1
.end method

.method public getShowRecentApplicationShortCut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    return v0
.end method

.method public handleDismiss(Landroid/view/View;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v0, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v10, "activity"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    const/4 v9, 0x1

    iget-object v10, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    instance-of v10, v10, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    iget-object v2, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v11, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-object v11, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_0

    const/4 v9, 0x0

    :cond_0
    if-eqz v9, :cond_1

    iget-object v10, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v10, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_5

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v8, 0x0

    :cond_2
    iget-boolean v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHasCocktailBar:Z

    if-eqz v10, :cond_3

    const/4 v8, 0x0

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(Z)V

    iget v10, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    if-ltz v10, :cond_6

    if-eqz v1, :cond_6

    const-string v10, "RecentsPanelView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " label:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11, v8}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    :goto_1
    if-eqz v9, :cond_4

    iget-object v10, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_4
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v10}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    :goto_2
    return-void

    :cond_5
    iget-object v10, v5, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v2, v11, v12, v13}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_0

    :cond_6
    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->intent:Landroid/content/Intent;

    const v10, 0x10104000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "RecentsPanelView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x2

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v8, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v10, "RecentsPanelView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recents does not have the permission to launch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v10, "RecentsPanelView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error launching activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissAndGoHome()V

    goto :goto_2
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v0, v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v6, v8, Lcom/android/systemui/recent/cardholder/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSupportFreestyleLaunch:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x1030128

    invoke-direct {v1, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040bf4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_window_enabled"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mSupportFreestyleLaunch:Z

    if-eqz v8, :cond_0

    const-string v8, ""

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    new-instance v4, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v7, v4}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput v11, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mTriggerBy:I

    invoke-virtual {p1, v2, v7, p1, v10}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissAndGoBack()V

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.sec.android.app.FlashBarService"

    const-string v9, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.sec.android.action.RECENT_LONG_PRESS_LAUNCH"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.sec.android.multiwindow.extra.intent"

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "com.sec.android.multiwindow.extra.taskId"

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getTaskId()I

    move-result v8

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.sec.android.multiwindow.extra.support_multiwindow"

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iget v11, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual {v10, v8}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportMultiWindow(Lcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v8

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v0, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v11, "activity"

    invoke-virtual {v4, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v2, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget-object v12, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_2

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(Z)V

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->getActivityOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v3

    iget v11, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    if-ltz v11, :cond_3

    const-string v11, "multiwindow_facade"

    invoke-virtual {v4, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v11, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    const/4 v12, 0x1

    new-instance v13, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    invoke-virtual {v8, v11, v3, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    iget-object v11, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissAndGoHome()V

    return-void

    :cond_2
    iget-object v11, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v11, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->intent:Landroid/content/Intent;

    const v11, 0x10104000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    if-eqz v9, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_4
    const-string v11, "RecentsPanelView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v11, Landroid/os/UserHandle;

    const/4 v12, -0x2

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v7, v3, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v11, "RecentsPanelView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Recents does not have the permission to launch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v11, "RecentsPanelView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error launching activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public handleOnClickMultiWindowBtn(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v6, v4, Lcom/android/systemui/recent/cardholder/TaskDescription;->taskId:I

    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    invoke-virtual {v5, v6, v10, v9, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.FlashBarService"

    const-string v6, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "recentUI.multiwindow"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "recentUI.multiwindow.package"

    iget-object v6, v4, Lcom/android/systemui/recent/cardholder/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismiss()V

    return-void

    :cond_1
    iget-object v2, v4, Lcom/android/systemui/recent/cardholder/TaskDescription;->intent:Landroid/content/Intent;

    const v5, 0x10104000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v2, v10, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public handleOnClickPenWindowBtn(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissAndGoBack()V

    if-eqz v2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startFreeStyleActivity(Lcom/android/systemui/recent/cardholder/TaskDescription;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const-string v3, "TAG"

    const-string v4, "handleOnClickPenWindowBtn : Task Null exception!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    if-nez v0, :cond_1

    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jettison "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissAndGoHome()V

    :cond_3
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0b009b

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 25

    invoke-super/range {p0 .. p0}, Landroid/view/View;->onFinishInflate()V

    const-string v21, "RecentsPanelView"

    const-string v22, "onFinishInflate"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v21, 0x7f080026

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const v21, 0x7f08004a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const v21, 0x7f080048

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const v22, 0x108068a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setBackgroundResource(I)V

    const v21, 0x7f080049

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;

    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mSupportCloseButtonOnRecentPanel:Z

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    new-instance v21, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v14, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;)V

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/cardholder/RecentsCallback;)V

    const v21, 0x7f080024

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHighEndGfx:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHighEndGfx:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v21, :cond_8

    const v21, 0x7f080034

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsButtons:Landroid/view/View;

    const v21, 0x7f080035

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    const v21, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v21, 0x7f080047

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickLaunchButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v9

    if-eqz v9, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v21

    if-nez v21, :cond_3

    const-string v21, "RecentsPanelView"

    const-string v22, "mBlockRecentApplicationShortCut = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    if-nez v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v21, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v15, v0, [Landroid/widget/ImageView;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v11, 0x0

    const/16 v22, 0x0

    const v21, 0x7f080028

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v16, v22

    const/16 v22, 0x1

    const v21, 0x7f08002b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v16, v22

    const/16 v22, 0x2

    const v21, 0x7f08002e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v16, v22

    const/16 v22, 0x3

    const v21, 0x7f080031

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v16, v22

    const/16 v22, 0x0

    const v21, 0x7f080029

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v15, v22

    const/16 v22, 0x1

    const v21, 0x7f08002c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v15, v22

    const/16 v22, 0x2

    const v21, 0x7f08002f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v15, v22

    const/16 v22, 0x3

    const v21, 0x7f080032

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v15, v22

    const/16 v22, 0x0

    const v21, 0x7f08002a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v17, v22

    const/16 v22, 0x1

    const v21, 0x7f08002d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v17, v22

    const/16 v22, 0x2

    const v21, 0x7f080030

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v17, v22

    const/16 v22, 0x3

    const v21, 0x7f080033

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v17, v22

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_a

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v7, v0, :cond_a

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v21, "RecentsPanelView"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onFinishInflate() : mShortcutComponentNames["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v8, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v13, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_5

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    aget-object v21, v16, v7

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    aget-object v21, v16, v7

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setClickable(Z)V

    aget-object v21, v16, v7

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x5a

    const/16 v24, 0x5a

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    aget-object v21, v15, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v21, v15, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    aget-object v21, v15, v7

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v21, v15, v7

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setPressed(Z)V

    aget-object v21, v15, v7

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setClickable(Z)V

    aget-object v21, v15, v7

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->clearFocus()V

    aget-object v21, v15, v7

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/16 v22, 0xff

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    aget-object v21, v17, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v21, v15, v7

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnTouchShortcutIcon;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v21, v15, v7

    new-instance v22, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_4

    aget-object v21, v16, v7

    aget-object v22, v16, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setNextFocusLeftId(I)V

    aget-object v21, v16, v6

    aget-object v22, v16, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setNextFocusRightId(I)V

    :cond_4
    move v6, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_6
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "missing Recents[Horizontal]ScrollView"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v22, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto/16 :goto_0

    :cond_8
    const v21, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsButtons:Landroid/view/View;

    const v21, 0x7f08003d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    const v21, 0x7f080041

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    if-lez v11, :cond_c

    const v21, 0x7f080027

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_4
    return-void

    :cond_c
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTaskLoadingCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/cardholder/TaskDescription;)V
    .locals 8

    monitor-enter p1

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-boolean v6, v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    if-ne v6, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v3, v6, v7, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v3, v6, v7, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showIfReady()V

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onTasksLoaded()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;->onTasksLoaded()V

    :cond_0
    return-void
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onUiHidden()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->clearRecentTasksList()V

    :cond_0
    return-void
.end method

.method public onWindowAnimationStart()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWaitingForWindowAnimation:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWindowAnimationStartTime:J

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->animateInIconOfFirstTask()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public refreshViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateUiElements()V

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showIfReady()V

    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    :cond_0
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    return-void
.end method

.method public setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    return-void
.end method

.method public show(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v2, 0x1

    iput-boolean p4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    iput-boolean p4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWaitingForWindowAnimation:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWaitingToShow:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.recent.RECENTSPANEL_OPEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showIfReady()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.recent.RECENTSPANEL_CLOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showImpl(Z)V

    goto :goto_0
.end method

.method public showRecentHelpPopup()V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "STATUSBAR-RecentsPanelView"

    const-string v10, "showTraybarHelpPopup"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "recent_menukey_dialog_do_not_show"

    const/4 v11, -0x2

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_0

    move v4, v7

    :goto_0
    if-eqz v4, :cond_1

    const-string v7, "STATUSBAR-RecentsPanelView"

    const-string v8, "InformDialog isChecked"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v4, v8

    goto :goto_0

    :cond_1
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_3

    iput-boolean v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->misAvailableHelpHub:Z

    const-string v5, "com.samsung.helphub"

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-boolean v7, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->misAvailableHelpHub:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissHelpPopup()V

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->makeRecentHelpPopup()V

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mHandler:Landroid/os/Handler;

    invoke-static {v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    int-to-long v9, v9

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public simulateClick(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v2, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->handleDismiss(Landroid/view/View;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver()V
    .locals 2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public final updateValuesFromResources()V
    .locals 2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemWidth:I

    const v1, 0x7f0d015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFitThumbnailToXY:Z

    return-void
.end method
