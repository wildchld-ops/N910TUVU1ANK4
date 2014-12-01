.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;
.super Landroid/os/Handler;
.source "PedoCalibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    move-result-object v0

    iget v1, v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->totalStepCnt:I

    iget v2, v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->walkStepCnt:I

    iget v3, v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->runStepCnt:I

    iget-wide v4, v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->distance:D

    iget-wide v6, v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->speed:D

    iget v8, v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->upDownStepCnt:I

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->onStepInfoUpdate(IIIDDI)V

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateMachine()V

    goto :goto_0

    :pswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    move-result-object v0

    iget v1, v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->usedSat:I

    iget v2, v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->accuracy:F

    iget-wide v3, v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->latitude:D

    iget-wide v5, v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->longitude:D

    iget-wide v7, v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->altitude:D

    iget-wide v9, v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->timestamp:J

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->onGpsUpdate(IFDDDJ)V

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateMachine()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
