.class Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;
.super Landroid/os/Handler;
.source "SpectrumEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    # invokes: Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->newXY()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->access$000(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    # invokes: Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->newR()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->access$100(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    # getter for: Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I
    invoke-static {v0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->access$200(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    # getter for: Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->RUNNING:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->access$300(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;->this$0:Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;

    # getter for: Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->access$400(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
