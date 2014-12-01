.class public final Lcom/android/launcher2/MenuAppsGridFragment;
.super Landroid/app/Fragment;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGridFragment$2;
    }
.end annotation


# static fields
.field private static final APP_GRID_SAVED_STATE:Ljava/lang/String; = "MENU_APP_GRID_SAVED_STATE"

.field public static DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String; = null

.field public static DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String; = null

.field public static DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String; = null

.field public static DL_UNINSTALL_MODE:Ljava/lang/String; = null

.field public static final DONT_CHG_STATE_ON_PREDRAW:Ljava/lang/String; = "DONT_CHG_STATE_ON_PREDRAW"

.field private static final FOLDER_STATE_BUNDLE:Ljava/lang/String; = "folderStateBundle"

.field public static SHARE_SELECT_MODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MenuAppsGridFragment"

.field public static WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

.field public static WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;


# instance fields
.field private mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mIsPaused:Z

.field public mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingModelUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FromDownloadedAppsReturnToWidgetsTabMenuIsInListViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    const-string v0, "FromDownloadedAppsReturntoWidgetsTabMenuIsInGridViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    const-string v0, "FromDownloadedAppsReturnToListViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    const-string v0, "WeAreCurrentlyInWidgetTabWithMenuInListViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    const-string v0, "WeAreCurrentlyInWidgetTabWithMenuInGridViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    const-string v0, "WeAreCurrentlyInShareSelectMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    const-string v0, "WeAreCurrentlyInDownloadedUninstallMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuAppsGridFragment;Lcom/android/launcher2/MenuView$ViewType;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private closeDialog()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "editCancelDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "AddAppsWidgetToastPopUp"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Landroid/app/DialogFragment;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method private updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->appBadgeUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->appModelUpdated()V

    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_0
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    return-void
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_1
    return-void
.end method

.method public closeFolders()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_0
    return-void
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public handleDownloadedAppsStateChange()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->returnToPreviousState()V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->backState()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithAnimaton()V

    goto :goto_0

    :pswitch_5
    sget-boolean v1, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    :cond_3
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v3, "MenuAppsGridFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView. savedInstanceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_5

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f030038

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedView;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    invoke-static {p0}, Lcom/android/launcher2/FolderIconView;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz p3, :cond_1

    const-string v2, "MENU_APP_GRID_SAVED_STATE"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v5, v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid$State;->values()[Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "folderStateBundle"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->setTabHost(Lcom/android/launcher2/MenuView;)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MenuView.ViewType"

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v2

    :cond_5
    const-string v2, "not null"

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MenuAppsGridFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onExitAllApps()V

    :cond_1
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->leaveCurrentState()V

    :cond_0
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    move v5, v6

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v7, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    move v5, v6

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v3}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithoutAnimation()V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->backState()V

    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto :goto_2

    :pswitch_2
    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    :pswitch_3
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->isDragInProgress()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_1

    :pswitch_4
    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPinch()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getCurrentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "MenuAppsGridFragment"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onResume()V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    :cond_2
    return-void

    :cond_3
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v1, :cond_0

    const-string v1, "MENU_APP_GRID_SAVED_STATE"

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    const-string v1, "folderStateBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher2/MenuAppsGridFragment$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->onStop()V

    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setTabHost(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-void
.end method
