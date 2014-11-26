.class public Lcom/samsung/javaomp/runtime/__OMPReducer;
.super Ljava/lang/Object;


# instance fields
.field volatile andReduction:Ljava/lang/Boolean;

.field volatile bitAndReduction:Ljava/lang/Long;

.field volatile bitOrReduction:Ljava/lang/Long;

.field volatile bitXorReduction:Ljava/lang/Long;

.field volatile doubleMaxReduction:Ljava/lang/Double;

.field volatile doubleMinReduction:Ljava/lang/Double;

.field volatile doubleMinusReduction:Ljava/lang/Double;

.field volatile doubleMultiReduction:Ljava/lang/Double;

.field volatile doublePlusReduction:Ljava/lang/Double;

.field volatile longMaxReduction:Ljava/lang/Long;

.field volatile longMinReduction:Ljava/lang/Long;

.field volatile longMinusReduction:Ljava/lang/Long;

.field volatile longMultiReduction:Ljava/lang/Long;

.field volatile longPlusReduction:Ljava/lang/Long;

.field volatile orReduction:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndReduction(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->andReduction:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {v3, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->andReduction:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public static getBitAndReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitAndReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitAndReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    and-long v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getBitOrReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitOrReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitOrReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getBitXorReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitXorReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitXorReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    xor-long v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getDoubleMaxReduction(Ljava/lang/String;)D
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMaxReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMaxReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getDoubleMinReduction(Ljava/lang/String;)D
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMinReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMinReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getDoubleMinusReduction(Ljava/lang/String;)D
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMinusReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMinusReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getDoubleMultiReduction(Ljava/lang/String;)D
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMultiReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMultiReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getDoublePlusReduction(Ljava/lang/String;)D
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doublePlusReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doublePlusReduction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getLongMaxReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMaxReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMaxReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getLongMinReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMinReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMinReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getLongMinusReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMinusReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMinusReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getLongMultiReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMultiReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMultiReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getLongPlusReduction(Ljava/lang/String;)J
    .locals 7

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longPlusReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longPlusReduction:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v0, v1, v5

    invoke-virtual {v4, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public static getOrReduction(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->orReduction:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v3

    if-nez v1, :cond_0

    invoke-virtual {v3, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPReducer;->orReduction:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->removeReducer(Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    :cond_3
    return v1
.end method


# virtual methods
.method public setAndReduction(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->andReduction:Ljava/lang/Boolean;

    return-void
.end method

.method public setBitAndReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitAndReduction:Ljava/lang/Long;

    return-void
.end method

.method public setBitOrReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitOrReduction:Ljava/lang/Long;

    return-void
.end method

.method public setBitXorReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitXorReduction:Ljava/lang/Long;

    return-void
.end method

.method public setMaxReduction(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMaxReduction:Ljava/lang/Double;

    return-void
.end method

.method public setMaxReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMaxReduction:Ljava/lang/Long;

    return-void
.end method

.method public setMinReduction(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMinReduction:Ljava/lang/Double;

    return-void
.end method

.method public setMinReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMinReduction:Ljava/lang/Long;

    return-void
.end method

.method public setMinusReduction(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMinusReduction:Ljava/lang/Double;

    return-void
.end method

.method public setMinusReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMinusReduction:Ljava/lang/Long;

    return-void
.end method

.method public setMultiReduction(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doubleMultiReduction:Ljava/lang/Double;

    return-void
.end method

.method public setMultiReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longMultiReduction:Ljava/lang/Long;

    return-void
.end method

.method public setOrReduction(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->orReduction:Ljava/lang/Boolean;

    return-void
.end method

.method public setPlusReduction(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->doublePlusReduction:Ljava/lang/Double;

    return-void
.end method

.method public setPlusReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->longPlusReduction:Ljava/lang/Long;

    return-void
.end method

.method public setXorReduction(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPReducer;->bitXorReduction:Ljava/lang/Long;

    return-void
.end method
