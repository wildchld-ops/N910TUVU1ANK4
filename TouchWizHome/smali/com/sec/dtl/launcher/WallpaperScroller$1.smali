.class Lcom/sec/dtl/launcher/WallpaperScroller$1;
.super Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dtl/launcher/WallpaperScroller;


# direct methods
.method constructor <init>(Lcom/sec/dtl/launcher/WallpaperScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-direct {p0}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVectorChanged(FFFF)V
    .locals 5
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$000(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    move-result-object v0

    neg-float v1, p4

    iget-object v2, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    invoke-static {v2}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$000(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    move-result-object v2

    iget v2, v2, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenWidth:F
    invoke-static {v3}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$100(Lcom/sec/dtl/launcher/WallpaperScroller;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mScreenHeight:F
    invoke-static {v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$200(Lcom/sec/dtl/launcher/WallpaperScroller;)F

    move-result v4

    # invokes: Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->update(FFFF)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->access$300(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;FFFF)V

    return-void
.end method
