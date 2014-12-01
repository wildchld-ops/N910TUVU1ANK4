.class public Lcom/android/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 13

    iget-object v10, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v9, :cond_0

    monitor-exit v10

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, -0x2

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v9, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "ApplicationsState"

    const-string v10, "Rebuilding..."

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    invoke-interface {v4, v7}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v9, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_2
    const-string v9, "ApplicationsState"

    const-string v11, "rebuild acquired lock"

    invoke-static {v9, v11}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v9, v7}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    const-string v9, "ApplicationsState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Using "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "ApplicationsState"

    const-string v11, "rebuild releasing lock"

    invoke-static {v9, v11}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    :cond_4
    :try_start_6
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    iget-object v10, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v10

    :try_start_7
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v9, :cond_5

    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v9, :cond_6

    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    :goto_3
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v9, "ApplicationsState"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IllegalArgumentException :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :try_start_8
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v9
.end method

.method public pause()V
    .locals 3

    const-string v0, "ApplicationsState"

    const-string v1, "pause about to acquire lock..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doPauseIfNeededLocked()V

    :cond_0
    const-string v0, "ApplicationsState"

    const-string v2, "...pause releasing lock"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const-string v6, "com.sec.android.app.saareamailprovider"

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const-string v6, "com.sec.android.app.saspmodemailerprovider"

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tphone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const-string v6, "com.skt.prod.phone"

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    :cond_1
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const-string v6, "com.customermobile.preload.vzw"

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const-string v6, "com.verizon.llkagent"

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v5, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0xfa

    add-long v3, v7, v9

    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_6

    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v5

    :cond_5
    const-string v5, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const-string v6, "com.sec.android.app.sadisasterprovider"

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    :cond_6
    :try_start_5
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v7, v3, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public resume()V
    .locals 3

    const-string v0, "ApplicationsState"

    const-string v1, "resume about to acquire lock..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ApplicationsState"

    const-string v1, "...resume releasing lock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
