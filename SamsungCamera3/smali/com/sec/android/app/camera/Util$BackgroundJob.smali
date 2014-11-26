.class Lcom/sec/android/app/camera/Util$BackgroundJob;
.super Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;
    .param p2    # Ljava/lang/Runnable;
    .param p3    # Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleAdapter;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Util$BackgroundJob$1;-><init>(Lcom/sec/android/app/camera/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

    iput-object p2, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MonitoredActivity;->addLifeCycleListener(Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Util$BackgroundJob;)Lcom/sec/android/app/camera/MonitoredActivity;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/Util$BackgroundJob;

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityStarted(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    return-void
.end method

.method public onActivityStopped(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
