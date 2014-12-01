.class Lcom/android/settings/wfd/WifiDisplaySettings$3;
.super Landroid/os/Handler;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "mMotionHandler scanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    :cond_2
    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
