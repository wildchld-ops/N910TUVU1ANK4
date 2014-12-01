.class Landroid/hardware/motion/MotionRecognitionFlipCover$2;
.super Ljava/lang/Object;
.source "MotionRecognitionFlipCover.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionFlipCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    float-to-int v2, v2

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostLightVal:I
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$002(Landroid/hardware/motion/MotionRecognitionFlipCover;I)I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostLightVal:I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$000(Landroid/hardware/motion/MotionRecognitionFlipCover;)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "light val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostLightVal:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$000(Landroid/hardware/motion/MotionRecognitionFlipCover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$100(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$300(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorProxListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$200(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$300(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$300(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    const/4 v2, 0x1

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$102(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z
    invoke-static {v1, v5}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$402(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z

    const-string v1, "MotionRecognitionService"

    const-string v2, " Proximity Reg "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
