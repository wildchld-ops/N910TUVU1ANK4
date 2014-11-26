.class Lcom/android/phone/ExtraRinger$3;
.super Ljava/lang/Object;
.source "ExtraRinger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ExtraRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ExtraRinger;


# direct methods
.method constructor <init>(Lcom/android/phone/ExtraRinger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ExtraRinger$3;->this$0:Lcom/android/phone/ExtraRinger;

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
    .locals 14
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v2, v10

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v6, v10

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v8, v10

    mul-double v10, v2, v2

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v10, 0x4066800000000000L

    mul-double/2addr v10, v0

    const-wide v12, 0x400921fb54442d18L

    div-double v0, v10, v12

    iget-object v10, p0, Lcom/android/phone/ExtraRinger$3;->this$0:Lcom/android/phone/ExtraRinger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAccelerometerSensorListener : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/ExtraRinger;->access$100(Lcom/android/phone/ExtraRinger;Ljava/lang/String;)V

    const-wide/high16 v10, 0x403e000000000000L

    cmpl-double v10, v0, v10

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/ExtraRinger$3;->this$0:Lcom/android/phone/ExtraRinger;

    const/4 v11, 0x2

    # |= operator for: Lcom/android/phone/ExtraRinger;->mSensorChecked:I
    invoke-static {v10, v11}, Lcom/android/phone/ExtraRinger;->access$476(Lcom/android/phone/ExtraRinger;I)I

    :goto_0
    iget-object v10, p0, Lcom/android/phone/ExtraRinger$3;->this$0:Lcom/android/phone/ExtraRinger;

    # invokes: Lcom/android/phone/ExtraRinger;->updateSensorState()V
    invoke-static {v10}, Lcom/android/phone/ExtraRinger;->access$500(Lcom/android/phone/ExtraRinger;)V

    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/phone/ExtraRinger$3;->this$0:Lcom/android/phone/ExtraRinger;

    const/4 v11, 0x4

    # setter for: Lcom/android/phone/ExtraRinger;->mSensorChecked:I
    invoke-static {v10, v11}, Lcom/android/phone/ExtraRinger;->access$402(Lcom/android/phone/ExtraRinger;I)I

    goto :goto_0
.end method
