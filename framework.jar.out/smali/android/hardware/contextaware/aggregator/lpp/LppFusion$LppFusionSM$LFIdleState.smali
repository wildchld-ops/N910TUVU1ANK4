.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
.super Lcom/android/internal/util/State;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LFIdleState"
.end annotation


# instance fields
.field private lastPassLoc:Landroid/location/Location;

.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->lastPassLoc:Landroid/location/Location;

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

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    const-string v4, "LppFusion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v7, p1, Landroid/os/Message;->what:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$android$hardware$contextaware$aggregator$lpp$LppFusion$StateMsg:[I

    sget-object v5, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v6, p1, Landroid/os/Message;->what:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "LppFusion"

    const-string v5, "Msg not handled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :pswitch_0
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->start()V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, v5, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mCfg:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;
    invoke-static {v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v6, v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;
    invoke-static {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->start(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;)V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->start()V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locRequest(I)V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v4

    const/4 v5, 0x6

    const-string v6, "LPPAlgoLnr\t Location is requested"

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;
    invoke-static {v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$700(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    move-result-object v5

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$800(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v4, "LppFusion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batch loc list size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    goto :goto_2

    :cond_0
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->lastPassLoc:Landroid/location/Location;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->stop()V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->stop()V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->stop()V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->exit()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
