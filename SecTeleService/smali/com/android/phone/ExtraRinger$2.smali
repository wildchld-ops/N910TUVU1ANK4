.class Lcom/android/phone/ExtraRinger$2;
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

    iput-object p1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

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
    .locals 4
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightSensorListener : lux = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ExtraRinger;->access$100(Lcom/android/phone/ExtraRinger;Ljava/lang/String;)V

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    const/4 v2, 0x1

    # |= operator for: Lcom/android/phone/ExtraRinger;->mSensorChecked:I
    invoke-static {v1, v2}, Lcom/android/phone/ExtraRinger;->access$476(Lcom/android/phone/ExtraRinger;I)I

    :goto_0
    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    # invokes: Lcom/android/phone/ExtraRinger;->updateSensorState()V
    invoke-static {v1}, Lcom/android/phone/ExtraRinger;->access$500(Lcom/android/phone/ExtraRinger;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    const/4 v2, 0x4

    # setter for: Lcom/android/phone/ExtraRinger;->mSensorChecked:I
    invoke-static {v1, v2}, Lcom/android/phone/ExtraRinger;->access$402(Lcom/android/phone/ExtraRinger;I)I

    goto :goto_0
.end method
