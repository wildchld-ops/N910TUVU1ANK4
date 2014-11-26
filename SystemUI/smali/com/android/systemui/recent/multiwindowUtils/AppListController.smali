.class public Lcom/android/systemui/recent/multiwindowUtils/AppListController;
.super Ljava/lang/Object;
.source "AppListController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final STYLE_ISOLATED_SPLIT:Ljava/lang/String; = "isolatedSplit"

.field private static final TAG:Ljava/lang/String; = "MultiWindowTrayController"

.field public static final TOP_POSITION_MULTIWINDOW_APP:I = 0x2

.field public static final TOP_POSITION_RECENT_APP:I = 0x1

.field public static final TRIGGER_BY_MULTIWINDOW_APP:I = 0x2

.field public static final TRIGGER_BY_RECENT_APP:I = 0x1


# instance fields
.field private final MAX_TASKS:I

.field private final WINDOW_PORTRAIT_MODE:S

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mArrangeState:I

.field private mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private mDockingArea:Landroid/graphics/Rect;

.field private mIntent:Landroid/content/Intent;

.field private mIsMWTrayOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMultiInstanceMaxCnt:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

.field public mPreviewFullAppZone:I

.field private mSupportMultiInstance:Z

.field mSupportQuadView:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mZoneInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field taskInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-short v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->WINDOW_PORTRAIT_MODE:S

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->MAX_TASKS:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mArrangeState:I

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIsMWTrayOpen:Z

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iput v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDisplayOrientation:I

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiInstance(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow.quadview"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getAvailableMultiInstanceCnt()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiInstanceMaxCnt:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->updateWindowRects()V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getExecutePriority(I)I
    .locals 5
    .param p1    # I

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v4, 0xc

    if-eq p1, v4, :cond_0

    if-ne p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getRunningTaskCnt(ZZZ)I
    .locals 12
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    const/4 v11, 0x0

    const/16 v10, 0x800

    const/16 v9, 0x64

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v9, v8, v11}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v5

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p3, :cond_0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v9, v8, v11}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p2, :cond_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method


# virtual methods
.method public focusToSelectedApp(I)Z
    .locals 13
    .param p1    # I

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v10, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v7, p1, v10, v9}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iput-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v8, v8, v9}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getRunningTaskCnt(ZZZ)I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x8000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiInstanceMaxCnt:I

    if-lt v0, v7, :cond_5

    move v7, v8

    :goto_0
    return v7

    :cond_0
    if-lez v0, :cond_5

    if-ne v0, v8, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v10, 0x64

    const/4 v11, 0x3

    invoke-virtual {v7, v10, v11, v12}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v7, v10, v9, v12}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiInstanceMaxCnt:I

    return v0
.end method

.method public getCurrentGuideRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGuideRect(II)Landroid/graphics/Rect;
    .locals 11
    .param p1    # I
    .param p2    # I

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->updateWindowRects()V

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    :goto_1
    return-object v7

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_4
    if-eqz v1, :cond_9

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v7, :cond_6

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    if-gez v6, :cond_7

    :cond_5
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    monitor-exit v8

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    goto :goto_2

    :cond_7
    move v5, v6

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0

    :cond_8
    :goto_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    const/16 v7, 0xc

    iput v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    :goto_4
    move-object v7, v4

    goto/16 :goto_1

    :cond_9
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v7, :cond_a

    monitor-exit v8

    move-object v7, v4

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    monitor-exit v8

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    const/4 v2, 0x1

    :goto_5
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_11

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_10

    if-nez v6, :cond_f

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x3

    if-ne v5, v7, :cond_d

    const/16 v7, 0xc

    iput v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    :goto_6
    monitor-exit v8

    move-object v7, v3

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    goto :goto_6

    :cond_e
    iput v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    goto :goto_6

    :cond_f
    move-object v4, v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    if-eqz v4, :cond_8

    iget v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mArrangeState:I

    const/4 v9, 0x2

    if-ge v7, v9, :cond_8

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v5, 0x3

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0

    goto/16 :goto_3

    :cond_12
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v10, 0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v5, 0xc

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v10, 0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_13
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    goto/16 :goto_4

    :cond_14
    iput v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    goto/16 :goto_4
.end method

.method public getCurrentZone(II)I
    .locals 10
    .param p1    # I
    .param p2    # I

    const/16 v6, 0xc

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v7, 0x1000

    invoke-virtual {v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x1

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    iget v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mArrangeState:I

    if-ge v4, v8, :cond_7

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_6

    monitor-exit v7

    move v4, v5

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_7

    monitor-exit v7

    move v4, v6

    goto/16 :goto_0

    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v2

    goto/16 :goto_0
.end method

.method public getRectByZone(I)Landroid/graphics/Rect;
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedTaskAffinity()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/ComponentName;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez p1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getZoneByRect(Landroid/graphics/Rect;)I
    .locals 3
    .param p1    # Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    const-string v3, "Max PenWindow"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public isFullGuideLine(I)Z
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isFullGuideLine(IZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v0

    return v0
.end method

.method public isFullGuideLine(IZLcom/android/systemui/recent/cardholder/TaskDescription;)Z
    .locals 11
    .param p1    # I
    .param p2    # Z
    .param p3    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v7, :cond_1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz p2, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {p3}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    return v6

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v6, p1, v9, v8}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportMultiWindow(Lcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x200000

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v8, v7, v8}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getRunningTaskCnt(ZZZ)I

    move-result v0

    if-lez v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v9, 0x8000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    move v6, v8

    goto :goto_1

    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v9, 0x64

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v7, v10}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_9

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    goto/16 :goto_1

    :cond_a
    move v6, v8

    goto/16 :goto_1
.end method

.method public isLaunchingBlockedItem(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isLaunchingBlockedItem(IZ)Z

    move-result v0

    return v0
.end method

.method public isLaunchingBlockedItem(IZ)Z
    .locals 12
    .param p1    # I
    .param p2    # Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v10, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v7, p1, v10, v8}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_5

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iput-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v9, v9, v8}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getRunningTaskCnt(ZZZ)I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x8000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiInstanceMaxCnt:I

    if-lt v0, v7, :cond_5

    move v7, v9

    goto :goto_0

    :cond_1
    if-lez v0, :cond_5

    if-ne v0, v9, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v8, 0x64

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto/16 :goto_0

    :cond_3
    move v7, v9

    goto/16 :goto_0

    :cond_4
    move v7, v8

    goto/16 :goto_0

    :cond_5
    move v7, v8

    goto/16 :goto_0
.end method

.method public isMultiWindowTrayOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIsMWTrayOpen:Z

    return v0
.end method

.method public isPenWindowOnly(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->isPenWindowOnly(I)Z

    move-result v0

    return v0
.end method

.method public isRunningScaleWindow(I)Z
    .locals 7
    .param p1    # I

    const/4 v6, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1    # Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportMultiWindow(Lcom/android/systemui/recent/cardholder/TaskDescription;)Z
    .locals 6
    .param p1    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_3

    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/high16 v4, 0x200000

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1    # Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleWindow(Lcom/android/systemui/recent/cardholder/TaskDescription;)Z
    .locals 6
    .param p1    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x200000

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_1
.end method

.method public isTemplateItem(I)Z
    .locals 5
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    iget v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDisplayOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->updateWindowRects()V

    :cond_0
    return-void
.end method

.method public setMWTrayOpenState(Z)V
    .locals 4
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIsMWTrayOpen:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_expanded"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput-boolean p1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIsMWTrayOpen:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowTrayOpenState(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivitiesSafe([Landroid/content/Intent;)V
    .locals 8
    .param p1    # [Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "MultiWindowTrayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in startActivitiesSafe() mContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    const-string v5, "MultiWindowTrayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public startActivity(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivity(III)Z

    move-result v0

    return v0
.end method

.method public startActivity(III)Z
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivity(IIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v0

    return v0
.end method

.method public startActivity(IIIIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .param p7    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_1

    invoke-virtual {p7}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    const/16 v2, 0x800

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitySafe(Landroid/content/Intent;)V

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public startActivity(IIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z
    .locals 29
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_17

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isLaunchingBlockedItem(IZ)Z

    move-result v25

    if-eqz v25, :cond_1

    const/4 v6, 0x0

    :goto_1
    return v6

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v15

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    new-instance v24, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_2

    const/high16 v25, 0x200000

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    const/16 v26, 0x1000

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v25

    if-nez v25, :cond_2

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    const/16 v25, -0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentZone(II)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitySafe(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_8

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    const/16 v26, 0xc

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    :cond_4
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/16 v25, 0xc

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    move/from16 v25, v0

    const/16 v26, 0xc

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mPreviewFullAppZone:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v25, 0xc

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_3

    :cond_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/content/Intent;

    move-object/from16 v13, v25

    check-cast v13, [Landroid/content/Intent;

    const/4 v8, 0x0

    :goto_4
    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_c

    aget-object v25, v13, v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    aget-object v25, v13, v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v25

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    aget-object v25, v13, v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    aget-object v25, v13, v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v25

    const/16 v26, 0xc

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_5

    :cond_c
    array-length v0, v13

    move/from16 v17, v0

    array-length v0, v13

    move/from16 v25, v0

    add-int/lit8 v12, v25, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z

    move/from16 v25, v0

    if-nez v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v25 .. v28}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    move-object v4, v13

    array-length v0, v4

    move/from16 v16, v0

    const/4 v10, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v10, v0, :cond_d

    aget-object v11, v4, v10

    const-string v25, "isResumed"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_f

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v18

    if-eqz v20, :cond_e

    if-eqz v18, :cond_e

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    add-int/lit8 v17, v17, -0x1

    const-string v25, "isResumed"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_10
    const/4 v8, 0x1

    :goto_8
    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_12

    add-int/lit8 v25, v8, -0x1

    aget-object v25, v13, v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v20

    aget-object v25, v13, v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v21

    if-eqz v20, :cond_11

    if-eqz v21, :cond_11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    add-int/lit8 v12, v12, -0x1

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    if-nez v17, :cond_13

    if-nez v12, :cond_13

    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_13
    const/4 v8, 0x0

    :goto_a
    array-length v0, v13

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v8, v0, :cond_16

    add-int/lit8 v14, v8, 0x1

    :goto_b
    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_15

    aget-object v25, v13, v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getExecutePriority(I)I

    move-result v25

    aget-object v26, v13, v14

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getExecutePriority(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_14

    aget-object v22, v13, v8

    aget-object v25, v13, v14

    aput-object v25, v13, v8

    aput-object v22, v13, v14

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitiesSafe([Landroid/content/Intent;)V

    goto :goto_9

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public startActivityForRecentApp(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public startActivitySafe(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MultiWindowTrayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in startActivityAsUserSafe() mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startActivityWithMultiWindowApp(Lcom/android/systemui/recent/cardholder/TaskDescription;I)V
    .locals 13
    .param p1    # Lcom/android/systemui/recent/cardholder/TaskDescription;
    .param p2    # I

    const/16 v12, 0xc

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v8, "com.google.android.youtube"

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v8, p2, v9, v10}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/Intent;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/Intent;

    move-object v2, v8

    check-cast v2, [Landroid/content/Intent;

    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v7, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    aget-object v8, v2, v10

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-virtual {v9, p2, v10}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getListItemByIndex(IZ)Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :goto_1
    if-eqz v0, :cond_0

    const-string v8, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    invoke-virtual {v7, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    aget-object v8, v2, v11

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitiesSafe([Landroid/content/Intent;)V

    return-void

    :cond_3
    const/high16 v8, 0x10200000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    invoke-virtual {v7, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    aget-object v8, v2, v11

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_2
.end method

.method public startFreeStyleActivity(I)V
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startFreeStyleActivity(III)V

    return-void
.end method

.method public startFreeStyleActivity(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startFreeStyleActivity(IIIZ)V

    return-void
.end method

.method public startFreeStyleActivity(IIIZ)V
    .locals 20
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getRunningTaskCnt(ZZZ)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v10, 0x1

    :cond_0
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x8000000

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v17, -0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isLaunchingBlockedItem(IZ)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->focusToSelectedApp(I)Z

    goto :goto_0

    :cond_3
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, -0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    new-instance v16, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentZone(II)I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentZone(II)I

    move-result v17

    if-nez v17, :cond_4

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentZone(II)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitySafe(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isEnableMakePenWindow()Z

    move-result v17

    if-eqz v17, :cond_1

    new-instance v13, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    const/16 v17, 0x800

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v13, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitySafe(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getAppResolveInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/Intent;

    move-object/from16 v9, v17

    check-cast v9, [Landroid/content/Intent;

    const/4 v7, 0x0

    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    aget-object v17, v9, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    aget-object v17, v9, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    :cond_8
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    aget-object v17, v9, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    aget-object v17, v9, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    :goto_3
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    add-int/lit8 v11, v7, 0x1

    :goto_4
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_c

    aget-object v17, v9, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getExecutePriority(I)I

    move-result v17

    aget-object v18, v9, v11

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getExecutePriority(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    aget-object v15, v9, v7

    aget-object v17, v9, v11

    aput-object v17, v9, v7

    aput-object v15, v9, v11

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_d
    const/16 v17, 0x0

    aget-object v17, v9, v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    const/16 v17, 0x0

    aget-object v17, v9, v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitiesSafe([Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public startFreeStyleActivity(ILandroid/graphics/Rect;)V
    .locals 8
    .param p1    # I
    .param p2    # Landroid/graphics/Rect;

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-boolean v5, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportMultiInstance:Z

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mIntent:Landroid/content/Intent;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    const/16 v4, 0x800

    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitySafe(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public startFreeStyleActivity(Lcom/android/systemui/recent/cardholder/TaskDescription;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Lcom/android/systemui/recent/cardholder/TaskDescription;
    .param p2    # Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.google.android.youtube"

    invoke-virtual {p1}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    const/16 v3, 0x800

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivitySafe(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const/high16 v3, 0x10200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public startRunningApp(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getRunningAppTaskIdByIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    return-void
.end method

.method public updateWindowRects()V
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mArrangeState:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "MultiWindowTrayController"

    const-string v4, "mMultiWindowFacade.getCenterBarPoint() is null. keep old rects. if this is coming first time to call, error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    :cond_1
    iget v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDisplayOrientation:I

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDisplayOrientation:I

    if-ne v3, v9, :cond_6

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mDockingArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mSupportQuadView:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->mZoneRect:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
