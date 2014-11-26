.class Landroid/hardware/motion/MotionRecognitionGrip$1;
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

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionGrip$1;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

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
    .locals 6
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v5, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const-string v2, "ril.backoffstate"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ril.backoffstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x10018

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$1;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    # setter for: Landroid/hardware/motion/MotionRecognitionGrip;->mPostGripVal:S
    invoke-static {v2, v3}, Landroid/hardware/motion/MotionRecognitionGrip;->access$002(Landroid/hardware/motion/MotionRecognitionGrip;S)S

    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$1;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->mPostGripVal:S
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionGrip;->access$000(Landroid/hardware/motion/MotionRecognitionGrip;)S

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "MotionRecognitionService"

    const-string v3, "GRIP_SENSOR Grip far"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, v0, -0x2

    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTransmitPower "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$1;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionGrip;->access$100(Landroid/hardware/motion/MotionRecognitionGrip;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "MotionRecognitionService"

    const-string v3, "GRIP_SENSOR Grip close"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x1

    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  setTransmitPower "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$1;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionGrip;->access$100(Landroid/hardware/motion/MotionRecognitionGrip;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
