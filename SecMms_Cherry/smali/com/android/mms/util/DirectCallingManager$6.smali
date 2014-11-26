.class Lcom/android/mms/util/DirectCallingManager$6;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DirectCallingManager;->registerProximitySensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    sget-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    if-eqz v3, :cond_1

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "Proximity event is over twice"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, v3, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    const-string v1, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proximity Sensor : active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

    iget-boolean v4, v4, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsSpeechRecorgnizing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z
    invoke-static {v4}, Lcom/android/mms/util/DirectCallingManager;->access$2500(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

    iget-boolean v1, v1, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$2500(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z
    invoke-static {}, Lcom/android/mms/util/DirectCallingManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$6;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/util/DirectCallingManager$6$1;

    invoke-direct {v2, p0}, Lcom/android/mms/util/DirectCallingManager$6$1;-><init>(Lcom/android/mms/util/DirectCallingManager$6;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
