.class public final Lcom/android/launcher2/guide/GuideFragment;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# static fields
.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static GMode:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "GuideFragment"

.field public static currentPageToStopNavigation:I

.field public static instance:Lcom/android/launcher2/guide/GuideFragment;

.field public static isExtraWorkspacePageAdded:Z

.field public static isGuideCompleted:Z

.field public static isViewApps:Z

.field public static isViewAppsDialogDismissed:Z

.field public static isWallpaperGuide_Toast3_visible:Z

.field public static isWrongActionDialogVisible:Z

.field public static mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

.field public static sHelpHubStepNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isExtraWorkspacePageAdded:Z

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    sput v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    sput-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWallpaperGuide_Toast3_visible:Z

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    sput-object v1, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 10
    .param p0    # Landroid/app/Activity;
    .param p1    # Landroid/content/Intent;

    const-class v7, Lcom/android/launcher2/guide/GuideFragment;

    monitor-enter v7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "GuideFragment"

    const-string v8, "get extras not null"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "homescreen:guide_mode"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, "GuideFragment"

    const-string v8, "guide mode is not ours"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "onBackPressed"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    :cond_3
    if-nez v1, :cond_4

    if-eqz v4, :cond_1a

    :cond_4
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "onBackPressed"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "currentGmode"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "addapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_5
    const-string v6, "change_wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_6
    const-string v6, "add_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    :cond_7
    const-string v6, "view_all_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_8
    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_9
    const-string v6, "create_folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_a
    const-string v6, "move_app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_b
    const-string v6, "remove_items"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_c
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    goto/16 :goto_0

    :cond_d
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "addapps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_e

    const-string v6, "GuideFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_e
    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    :cond_f
    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/guide/GuideFragment$1;

    invoke-direct {v6}, Lcom/android/launcher2/guide/GuideFragment$1;-><init>()V

    const-wide/16 v8, 0x190

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_10
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "view_all_apps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_11
    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    :cond_12
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "change_wallpaper"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_13

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_13
    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    :cond_14
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "resize_widgets"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    :cond_15
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "create_folder"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    :cond_16
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "remove_items"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    :cond_17
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "move_app"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    :cond_18
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "add_widgets"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_19
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    :cond_1a
    const-string v6, "GuideFragment"

    const-string v8, "frag=null"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 4
    .param p0    # Landroid/app/Activity;

    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "move_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "change_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "view_all_apps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "remove_items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "resize_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    sget-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGuideFragmentInstance()Lcom/android/launcher2/guide/GuideFragment;
    .locals 1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->instance:Lcom/android/launcher2/guide/GuideFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->instance:Lcom/android/launcher2/guide/GuideFragment;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/guide/GuideFragment;

    invoke-direct {v0}, Lcom/android/launcher2/guide/GuideFragment;-><init>()V

    goto :goto_0
.end method

.method public static removeWrongActionDialog()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    :cond_0
    return-void
.end method

.method public static showCompleteDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "view_all_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/guide/GuideFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/guide/GuideFragment$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    const v0, 0x7f0f0130

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    return-void
.end method

.method public static showToast_createfolder(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const v1, 0x7f0f0007

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showWrongActionDialog(Landroid/app/Activity;)V
    .locals 5
    .param p0    # Landroid/app/Activity;

    const/4 v4, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0f0130

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "view_all_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/guide/GuideFragment$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/guide/GuideFragment$3;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/res/Configuration;
    .param p2    # Landroid/app/Activity;
    .param p3    # Landroid/content/Intent;

    monitor-enter p0

    :try_start_0
    const-string v6, "Guide fragment"

    const-string v7, "Guide fragment -> onConfigurationChanged"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "GuideFragment"

    const-string v7, "get extras not null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "homescreen:guide_mode"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, "GuideFragment"

    const-string v7, "guide mode is not ours"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-nez v1, :cond_3

    if-eqz v4, :cond_18

    :cond_3
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "add_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "GuideFragment"

    const-string v7, " showing help dialog--add widgets"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_4
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_5
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "onBackPressed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "currentGmode"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "navigation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/android/launcher2/guide/NavigationGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/NavigationGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_6
    const-string v6, "addapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_7
    const-string v6, "add_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    :cond_8
    const-string v6, "view_all_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_9
    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_a
    const-string v6, "create_folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_b
    const-string v6, "move_app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_c
    const-string v6, "remove_items"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_d
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    goto/16 :goto_0

    :cond_e
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "addapps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_f

    const-string v6, "GuideFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_f
    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_10
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "view_all_apps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_11
    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_12
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "change_wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_13

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_13
    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_14
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/guide/GuideFragment$4;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/launcher2/guide/GuideFragment$4;-><init>(Lcom/android/launcher2/guide/GuideFragment;Landroid/app/Activity;Landroid/content/res/Configuration;)V

    const-wide/16 v7, 0x190

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_15
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "create_folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_16
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "remove_items"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_17
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "move_app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_18
    const-string v6, "GuideFragment"

    const-string v7, "frag=null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
