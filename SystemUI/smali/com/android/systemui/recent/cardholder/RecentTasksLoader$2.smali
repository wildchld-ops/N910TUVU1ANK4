.class Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;
.super Ljava/lang/Thread;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->preloadFirstTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadFirstTask()Lcom/android/systemui/recent/cardholder/TaskDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    iget-boolean v1, v1, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mCancelPreloadingFirstTask:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # invokes: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->clearFirstTask()V
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mPreloadingFirstTask:Z

    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # setter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/cardholder/TaskDescription;
    invoke-static {v1, v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$202(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Lcom/android/systemui/recent/cardholder/TaskDescription;)Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mFirstTaskLoaded:Z
    invoke-static {v1, v3}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$302(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
