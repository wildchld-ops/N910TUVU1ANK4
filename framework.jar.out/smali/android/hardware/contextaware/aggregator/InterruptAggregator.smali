.class public Landroid/hardware/contextaware/aggregator/InterruptAggregator;
.super Landroid/hardware/contextaware/manager/InterruptContextProvider;
.source "InterruptAggregator.java"


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/InterruptContextProvider;-><init>(Landroid/hardware/contextaware/manager/ContextComponent;)V

    return-void
.end method


# virtual methods
.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->registerObserver()V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/InterruptContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/InterruptContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method
