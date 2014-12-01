.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pause"
.end annotation


# instance fields
.field batchStart:Z

.field firstTime:Z

.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    iput-boolean v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    :goto_0
    iput-boolean v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, 0x1

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

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->getName()Ljava/lang/String;

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

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;
    invoke-static {v5}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_2
    iput-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
