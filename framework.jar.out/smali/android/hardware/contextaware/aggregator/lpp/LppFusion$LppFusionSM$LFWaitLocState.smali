.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;
.super Lcom/android/internal/util/State;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LFWaitLocState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .locals 3

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v3, "LppFusion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v6, p1, Landroid/os/Message;->what:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$android$hardware$contextaware$aggregator$lpp$LppFusion$StateMsg:[I

    sget-object v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "LppFusion"

    const-string v4, "Msg not handled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_1
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v3

    const/4 v4, 0x6

    const-string v5, "LocManListener\t Location is delivered to Algo"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "LppFusion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loc list size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v4

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "LppFusion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batch loc list size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v4

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_2

    :pswitch_3
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-interface {v4, v3}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->onLocationChanged(Landroid/location/Location;)V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v4

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_2

    :pswitch_4
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v4

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_2

    :pswitch_5
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->stop()V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->stop()V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->stop()V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v4

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v3, v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->exit()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
