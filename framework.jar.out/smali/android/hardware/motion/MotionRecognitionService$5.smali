.class Landroid/hardware/motion/MotionRecognitionService$5;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x10017

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    float-to-int v2, v2

    aput v2, v1, v6

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    float-to-int v2, v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, -0x80

    aput v2, v1, v7

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x80

    aput v2, v1, v5

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x80

    aput v2, v1, v8

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v4}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v4

    aget v4, v4, v5

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v5

    aget v5, v5, v8

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$2900(Landroid/hardware/motion/MotionRecognitionService;IIII)V

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x47

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z
    invoke-static {v1, v7}, Landroid/hardware/motion/MotionRecognitionService;->access$3002(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z
    invoke-static {v1, v6}, Landroid/hardware/motion/MotionRecognitionService;->access$3002(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto :goto_0
.end method
