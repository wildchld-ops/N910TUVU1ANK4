.class Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
.super Ljava/lang/Thread;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperThread"
.end annotation


# instance fields
.field mBorder:F

.field mHeight:F

.field mStop:Z

.field mToken:Landroid/os/IBinder;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;Landroid/os/IBinder;F)V
    .locals 1

    const-string v0, "updateWallpaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mStop:Z

    iput-object p1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p2, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    return-void
.end method

.method static synthetic access$300(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->update(FFFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->shutdown()V

    return-void
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mStop:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(FFFF)V
    .locals 3

    const/high16 v2, 0x40000000

    const/high16 v1, 0x3f000000

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v0, v2

    div-float v0, p1, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mX:F

    iget v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v0, v2

    div-float v0, p2, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mY:F

    iput p3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWidth:F

    iput p4, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mHeight:F

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    if-nez v3, :cond_0

    :try_start_0
    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_1
    iget-boolean v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mStop:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWidth:F

    const/high16 v6, 0x40000000

    iget v7, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mHeight:F
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v1, v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v3, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    move v3, v4

    move v2, v1

    iget-object v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v4, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    :cond_4
    iget-object v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v6, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iget v7, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mX:F

    iget v8, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mY:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method
