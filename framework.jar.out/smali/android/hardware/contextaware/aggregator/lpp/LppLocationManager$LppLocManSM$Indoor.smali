.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Indoor"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_NLP_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$3700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    const/4 v1, 0x0

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    const/4 v1, 0x0

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsUnavailable()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;->$SwitchMap$android$hardware$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v0, "LppLocationManager"

    const-string v1, "requestSingleUpdate, timeout:4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_NLP_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Loc to Fusion; Accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    :goto_2
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$3600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_0
    const-string v0, "LppLocationManager"

    const-string v1, "Cannot find any location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    goto :goto_2

    :sswitch_3
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Loc to Fusion; Accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->clear()V

    goto/16 :goto_1

    :sswitch_4
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v0

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->exit()V
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$2400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_2
    .end sparse-switch
.end method
