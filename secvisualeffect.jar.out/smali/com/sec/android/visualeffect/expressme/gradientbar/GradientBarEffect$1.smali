.class Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;
.super Landroid/os/Handler;
.source "GradientBarEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectWidth:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->access$000(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->access$100(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isDrawing:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->access$200(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->access$300(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
