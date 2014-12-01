.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Lcom/samsung/location/SLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISLocationListener"
.end annotation


# instance fields
.field final synthetic this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;->this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_1

    const-string v2, "LppLocationManager"

    const-string v3, "locs is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;->this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "LppLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num of batch locs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;->this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->access$6800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v2, p1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;->this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->access$6800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, [Landroid/location/Location;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;->this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->access$6800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    const-string v2, "LppLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch loc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " t:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;->this$2:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v2

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_BATCH:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto/16 :goto_0
.end method
