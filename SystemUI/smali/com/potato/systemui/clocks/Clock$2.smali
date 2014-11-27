.class Lcom/potato/systemui/clocks/Clock$2;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/systemui/clocks/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/systemui/clocks/Clock;


# direct methods
.method constructor <init>(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock$2;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x3e8

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$2;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$2;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$2;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/potato/systemui/clocks/Clock;->access$26(Lcom/potato/systemui/clocks/Clock;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/potato/systemui/clocks/Clock$2;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/potato/systemui/clocks/Clock;->access$27(Lcom/potato/systemui/clocks/Clock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
