.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllNM"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

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

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->getName()Ljava/lang/String;

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

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsOffBatchStopped()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsOnBatchStopped()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
