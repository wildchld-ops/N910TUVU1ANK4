.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocManListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public batchLocListUpdate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public batchLocUpdate(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public gpsAvailable()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->gpsAvailable()V

    return-void
.end method

.method public gpsBatchStarted()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->gpsBatchStarted()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    return-void
.end method

.method public gpsBatchStopped()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->gpsOffBatchStopped()V

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->gpsOnBatchStopped()V

    return-void
.end method

.method public gpsUnavailable()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->gpsUnavailable()V

    return-void
.end method

.method public locPassBatchUpdate(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public locPassUpdate(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public locUpdate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public locationNotFound()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    return-void
.end method

.method public logData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public logNmeaData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    return-void
.end method
