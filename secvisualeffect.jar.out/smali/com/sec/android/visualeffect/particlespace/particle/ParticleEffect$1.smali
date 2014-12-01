.class Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;
.super Landroid/os/Handler;
.source "ParticleEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isAvailableRect()Z
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$000(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$100(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v5

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$300(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v5

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$400(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v5

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$500(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v5

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->invalidate(IIII)V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$600(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isPaused:Z
    invoke-static {v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$700(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget-object v4, v4, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$800(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v4, v7, v7, v5, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method
