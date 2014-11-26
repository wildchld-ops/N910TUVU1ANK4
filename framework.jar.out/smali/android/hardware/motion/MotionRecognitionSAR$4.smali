.class Landroid/hardware/motion/MotionRecognitionSAR$4;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionSAR;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSAR$4;->this$0:Landroid/hardware/motion/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSAR$4;->this$0:Landroid/hardware/motion/MotionRecognitionSAR;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    # invokes: Landroid/hardware/motion/MotionRecognitionSAR;->setProximity_flat(Z)V
    invoke-static {v2, v1}, Landroid/hardware/motion/MotionRecognitionSAR;->access$300(Landroid/hardware/motion/MotionRecognitionSAR;Z)V

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR$4;->this$0:Landroid/hardware/motion/MotionRecognitionSAR;

    # invokes: Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_flat()Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionSAR;->access$400(Landroid/hardware/motion/MotionRecognitionSAR;)Z

    :cond_1
    return-void
.end method
