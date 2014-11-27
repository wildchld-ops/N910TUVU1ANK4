.class Lpotato/mariozawa/statusbar/CPUSpy$1;
.super Ljava/lang/Object;
.source "CPUSpy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpotato/mariozawa/statusbar/CPUSpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpotato/mariozawa/statusbar/CPUSpy;


# direct methods
.method constructor <init>(Lpotato/mariozawa/statusbar/CPUSpy;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbar/CPUSpy$1;->this$0:Lpotato/mariozawa/statusbar/CPUSpy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x3e8

    iget-object v4, p0, Lpotato/mariozawa/statusbar/CPUSpy$1;->this$0:Lpotato/mariozawa/statusbar/CPUSpy;

    # invokes: Lpotato/mariozawa/statusbar/CPUSpy;->queryForCpuInformation()V
    invoke-static {v4}, Lpotato/mariozawa/statusbar/CPUSpy;->access$0(Lpotato/mariozawa/statusbar/CPUSpy;)V

    iget-object v4, p0, Lpotato/mariozawa/statusbar/CPUSpy$1;->this$0:Lpotato/mariozawa/statusbar/CPUSpy;

    invoke-virtual {v4}, Lpotato/mariozawa/statusbar/CPUSpy;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    iget-object v4, p0, Lpotato/mariozawa/statusbar/CPUSpy$1;->this$0:Lpotato/mariozawa/statusbar/CPUSpy;

    iget-object v4, v4, Lpotato/mariozawa/statusbar/CPUSpy;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lpotato/mariozawa/statusbar/CPUSpy$1;->this$0:Lpotato/mariozawa/statusbar/CPUSpy;

    # getter for: Lpotato/mariozawa/statusbar/CPUSpy;->mResetCpu:Ljava/lang/Runnable;
    invoke-static {v5}, Lpotato/mariozawa/statusbar/CPUSpy;->access$1(Lpotato/mariozawa/statusbar/CPUSpy;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
