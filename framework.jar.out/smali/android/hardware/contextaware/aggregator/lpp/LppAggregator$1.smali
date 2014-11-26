.class Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;
.super Ljava/lang/Object;
.source "LppAggregator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

.field final synthetic val$config:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    iput-object p2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->val$config:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->val$config:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->access$102(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->access$100(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->access$200(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->registerListener(Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->access$100(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
