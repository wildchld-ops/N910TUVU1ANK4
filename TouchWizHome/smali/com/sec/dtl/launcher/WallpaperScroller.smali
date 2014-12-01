.class public Lcom/sec/dtl/launcher/WallpaperScroller;
.super Ljava/lang/Object;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    }
.end annotation


# static fields
.field static final SCALE:F = 2.0f


# instance fields
.field private final TILT_WALLPAPER_OFFSET_DP:I

.field mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private final mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 7

    const/high16 v3, 0x3f800000

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenWidth:F

    iput v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenHeight:F

    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->TILT_WALLPAPER_OFFSET_DP:I

    new-instance v3, Lcom/sec/dtl/launcher/WallpaperScroller$1;

    invoke-direct {v3, p0}, Lcom/sec/dtl/launcher/WallpaperScroller$1;-><init>(Lcom/sec/dtl/launcher/WallpaperScroller;)V

    iput-object v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {p1, v1}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenWidth:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenHeight:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    const/high16 v4, 0x41200000

    mul-float/2addr v4, v0

    invoke-direct {v3, v2, p2, v4}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;-><init>(Landroid/app/WallpaperManager;Landroid/os/IBinder;F)V

    iput-object v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    iget-object v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    iget v4, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenWidth:F

    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenHeight:F

    # invokes: Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->update(FFFF)V
    invoke-static {v3, v6, v6, v4, v5}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->access$300(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;FFFF)V

    iget-object v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {v3}, Lcom/sec/dtl/launcher/GyroForShadow;->registerListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/dtl/launcher/WallpaperScroller;)F
    .locals 1

    iget v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenWidth:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/dtl/launcher/WallpaperScroller;)F
    .locals 1

    iget v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenHeight:F

    return v0
.end method


# virtual methods
.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {v0}, Lcom/sec/dtl/launcher/GyroForShadow;->unregisterListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {v0}, Lcom/sec/dtl/launcher/GyroForShadow;->registerListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {v0}, Lcom/sec/dtl/launcher/GyroForShadow;->unregisterListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    # invokes: Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->shutdown()V
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->access$400(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;)V

    return-void
.end method
