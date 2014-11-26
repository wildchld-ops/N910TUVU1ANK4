.class Landroid/hardware/motion/MotionRecognitionGrip$3;
.super Ljava/lang/Object;
.source "MotionRecognitionGrip.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionGrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionGrip;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionGrip;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionGrip$3;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

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

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$3;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    # invokes: Landroid/hardware/motion/MotionRecognitionGrip;->setProximity_flat(Z)V
    invoke-static {v2, v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$300(Landroid/hardware/motion/MotionRecognitionGrip;Z)V

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$3;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # invokes: Landroid/hardware/motion/MotionRecognitionGrip;->setPowerState_flat()Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$400(Landroid/hardware/motion/MotionRecognitionGrip;)Z

    :cond_1
    return-void
.end method
