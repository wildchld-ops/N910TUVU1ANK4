.class Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;
.super Landroid/os/Handler;
.source "FingerprintEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const-wide/16 v6, 0xa

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->left:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$000(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->top:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$100(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->right:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$200(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->bottom:I
    invoke-static {v4}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$300(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$400(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$500(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # operator-- for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$410(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # invokes: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isCircleAnimating()Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$600(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # invokes: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->stopDrawing()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$700(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isDrawing:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$800(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;->this$0:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    # getter for: Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->access$500(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
