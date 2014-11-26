.class public Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DISPLAY_TASKS:I = 0x14

.field private static final MAX_TASKS:I = 0x15

.field static final TAG:Ljava/lang/String; = "RecentTasksLoader"

.field private static final mCockTailBarPackageName:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static sInstance:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;


# instance fields
.field mCancelPreloadingFirstTask:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultIconBackground:Landroid/graphics/Bitmap;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private mFirstScreenful:Z

.field private mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;

.field private mFirstTaskLoaded:Z

.field private mFirstTaskLock:Ljava/lang/Object;

.field private mFocusedZone:I

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mLoadResumeOnly:Z

.field private mLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mNumTasksInFirstScreenful:I

.field mPreloadTasksRunnable:Ljava/lang/Runnable;

.field mPreloadingFirstTask:Z

.field private mRecentTasksCache:Lcom/android/systemui/recent/cardholder/RecentTasksCache;

.field private mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

.field private mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    sget-object v3, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    iput-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    iput v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFocusedZone:I

    iput-boolean v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mLoadResumeOnly:Z

    new-instance v3, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)V

    iput-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mIconDpi:I

    :goto_0
    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mLoadResumeOnly:Z

    new-instance v3, Lcom/android/systemui/recent/cardholder/RecentTasksCache;

    invoke-direct {v3}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentTasksCache:Lcom/android/systemui/recent/cardholder/RecentTasksCache;

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mIconDpi:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->clearFirstTask()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Lcom/android/systemui/recent/cardholder/TaskDescription;)Lcom/android/systemui/recent/cardholder/TaskDescription;
    .locals 0
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    .param p1    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)I
    .locals 1
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;
    .locals 0
    .param p0    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    .param p1    # Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    return-object p1
.end method

.method private cancelLoadingThumbnailsAndIcons()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onTaskLoadingCancelled()V

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstScreenful:Z

    sget-object v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    return-void
.end method

.method private clearFirstTask()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLoaded:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Landroid/content/pm/ResolveInfo;
    .param p2    # Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    .locals 3
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    :cond_0
    sget-object v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$4;-><init>(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 1
    .param p1    # Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    :cond_0
    return-void
.end method

.method public cancelPreloadingFirstTask()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mCancelPreloadingFirstTask:Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->clearFirstTask()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadingRecentTasksList()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/systemui/recent/cardholder/TaskDescription;
    .locals 13
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;
    .param p4    # Landroid/content/ComponentName;
    .param p5    # Ljava/lang/CharSequence;
    .param p6    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0xc0

    invoke-virtual {v11, v10, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v11}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "RecentTasksLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating activity desc for id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", label="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v6, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/recent/cardholder/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v1, v12}, Lcom/android/systemui/recent/cardholder/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "RecentTasksLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SKIPPING item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public forceSetCancelState()V
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    return-void
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mIconDpi:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v1, v2, v3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v4
.end method

.method public getFirstTask()Lcom/android/systemui/recent/cardholder/TaskDescription;
    .locals 2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLoaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadFirstTask()Lcom/android/systemui/recent/cardholder/TaskDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLoaded:Z

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x3

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/content/res/Resources;
    .param p2    # I

    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadedTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLoadingState()Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    return-object v0
.end method

.method public getRecentTasksCache()Lcom/android/systemui/recent/cardholder/RecentTasksCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentTasksCache:Lcom/android/systemui/recent/cardholder/RecentTasksCache;

    return-object v0
.end method

.method public isFirstScreenful()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method public loadFirstTask()Lcom/android/systemui/recent/cardholder/TaskDescription;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    const/4 v9, 0x0

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v8, Landroid/content/Intent;

    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    iget v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    iget-object v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/systemui/recent/cardholder/TaskDescription;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/cardholder/TaskDescription;)V

    :cond_4
    move-object v0, v9

    goto :goto_0
.end method

.method public loadTasksInBackground()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadTasksInBackground(Z)V

    return-void
.end method

.method public loadTasksInBackground(Z)V
    .locals 21
    .param p1    # Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    sget-object v2, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;->LOADING:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mState:Lcom/android/systemui/recent/cardholder/RecentTasksLoader$State;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstScreenful:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v1, 0x15

    const/4 v2, 0x2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v16

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    const/4 v10, 0x1

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v12, v9

    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    const/16 v1, 0x15

    if-ge v13, v1, :cond_5

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/systemui/recent/cardholder/TaskDescription;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstScreenful:Z

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->refreshViews()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onTasksLoaded()V

    :cond_6
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;

    move-object/from16 v2, p0

    move/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;-><init>(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;ILjava/util/List;Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V

    goto/16 :goto_0
.end method

.method loadThumbnailAndIcon(Lcom/android/systemui/recent/cardholder/TaskDescription;)V
    .locals 11
    .param p1    # Lcom/android/systemui/recent/cardholder/TaskDescription;

    const/4 v7, 0x0

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    :try_start_0
    iget v8, p1, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    iget-object v8, p1, Lcom/android/systemui/recent/cardholder/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v8, v4}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "personal_mode_enabled"

    const/4 v10, -0x2

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    monitor-enter p1

    if-eqz v6, :cond_3

    :try_start_1
    const-string v7, "RecentTasksLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded bitmap for task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isPrivate? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getTaskTopIsSecretMode(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PrivateSetting:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    iget v7, p1, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getTaskTopIsSecretMode(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "RecentTasksLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded bitmap for task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": black thumbnail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui/recent/cardholder/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {p1, v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/android/systemui/recent/cardholder/TaskDescription;->setLoaded(Z)V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    const-string v8, "RecentTasksLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load Thumbnail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v3, v7

    goto/16 :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p1, v6}, Lcom/android/systemui/recent/cardholder/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    const-string v7, "RecentTasksLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load Thumbnail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui/recent/cardholder/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->preloadRecentTasksList()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    goto :goto_0
.end method

.method public preloadFirstTask()V
    .locals 3

    new-instance v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;-><init>(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->clearFirstTask()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadingFirstTask:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadRecentTasksList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFocusedZone(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFocusedZone:I

    return-void
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 1
    .param p1    # Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    .param p2    # Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-ne v0, p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    :cond_1
    return-void
.end method
