.class Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$3;
.super Ljava/lang/Object;
.source "LppAggregator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$3;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$3;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->access$100(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$3;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->access$100(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->stopLpp()V

    :cond_0
    return-void
.end method
