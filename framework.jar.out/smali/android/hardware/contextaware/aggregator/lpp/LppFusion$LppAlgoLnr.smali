.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppAlgoLnr"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public logData(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdate(Landroid/location/Location;)V
    .locals 2

    const-string v0, "LppFusion"

    const-string v1, "LppAlgoLnr: onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateLPPtraj(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;)V"
        }
    .end annotation

    const-string v2, "LppFusion"

    const-string v3, "onUpdateLPPtraj"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->lppUpdate(Ljava/util/ArrayList;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->AddCoordinate(Ljava/util/ArrayList;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->AddGPSCoordinate(Ljava/util/ArrayList;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public requestLoc()V
    .locals 0

    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    return-void
.end method
