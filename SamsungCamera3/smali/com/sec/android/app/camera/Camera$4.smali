.class Lcom/sec/android/app/camera/Camera$4;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x3

    const/4 v6, 0x1

    const-string v3, "Camera3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainHandler handleMessage :: msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const-string v3, "Camera3"

    const-string v4, "MainHandler handleMessage Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    const-string v3, "Camera3"

    const-string v4, "processBack. FILE_SAVING_PROGRESS_BACK"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "Camera3"

    const-string v5, "MainHandler handleMessage Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    :cond_1
    const-string v3, "Camera3"

    const-string v4, "START_VOICE_RECOGNIZER"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v3, "Camera3"

    const-string v4, "Inactivity timer is expired. finish."

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    :pswitch_4
    const-string v3, "Camera3"

    const-string v4, "Overheat popup timer is expired. finish."

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    # getter for: Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$500()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # ++operator for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$604(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    # getter for: Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$500()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$602(Lcom/sec/android/app/camera/Camera;I)I

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->restartTouchAF()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_9
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine;->setHalfShutter(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_0

    :pswitch_a
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/subview/SubViewManager;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$900()I

    move-result v4

    if-ne v3, v4, :cond_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mRecordingStopAvailable:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1002(Lcom/sec/android/app/camera/Camera;Z)Z

    goto/16 :goto_0

    :pswitch_c
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v3

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->stopGolfShotDetectingTimer()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->initIntentFilter()V
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isBurstShotStarted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xbb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isNeedUpdate()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c021f

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v4

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xbb

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xbb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v4, "reviewon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setFlashOffInHighTemperature()V
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # ++operator for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1404(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayBridgeStatus()I

    move-result v4

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1502(Lcom/sec/android/app/camera/Camera;I)I

    const-string v3, "Camera3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWifiDisplayBridgeStatusCheckCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Camera3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckWifiDisplayBridgeStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->enableWifiDisplay()V
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1402(Lcom/sec/android/app/camera/Camera;I)I

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera$4;->removeMessages(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->enableWifiDisplay()V
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1402(Lcom/sec/android/app/camera/Camera;I)I

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera$4;->removeMessages(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :pswitch_13
    :try_start_5
    const-string v3, "Camera3"

    const-string v4, "Update thumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    const-string v3, "Camera3"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c0147

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_14
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isOverHeated()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->handleDeviceOverheat()V

    goto/16 :goto_0

    :pswitch_15
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->closeCoverCamera()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Camera3"

    const-string v4, "retry closeCoverCamera"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_17
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setStepHide()V

    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    :pswitch_18
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$900()I

    move-result v4

    if-eq v3, v4, :cond_19

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/subview/SubViewManager;->isShutterPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0275

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0c0115

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_19
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->startSideBezelTouchIconAnimation()V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->stopSideBezelTouchIconAnimation()V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    const-wide/16 v5, 0xaf0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1d
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startSelfShotCapture()V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    # setter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4, v3}, Lcom/sec/android/app/camera/Camera;->access$1902(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_20
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SELFSHOT:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PROCEEDING_ONCE:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PROCEEDING_TWICE:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->refreshShootingModesList()V
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->validateShootingModeExistence()Z

    goto/16 :goto_0

    :pswitch_25
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->onSelfieModeMenuSelect(I)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleTouchAE()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine;->setTouchAutoFocusActive(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastTouchAEAFPt:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastTouchAEAFPt:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CommonEngine;->setTouchFocusPosition(II)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    goto/16 :goto_0

    :pswitch_27
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x34

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c02a6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_28
    const-string v3, "Camera3"

    const-string v4, "onSelfieShotSmileDetectionSuccess SMILE_DETECTION"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1b

    :cond_1a
    const-string v3, "Camera3"

    const-string v4, "MainHandler handleMessage Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1b
    :try_start_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->checkSelfieCaptureCondition()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "Camera3"

    const-string v4, "MainHandler handleMessage Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1c
    :try_start_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine;->setSelfieMode(I)V

    :cond_1d
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto/16 :goto_0

    :pswitch_29
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/subview/SubViewManager;->onBaseMenuLoadingComplete()V

    goto/16 :goto_0

    :pswitch_2a
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/subview/SubViewManager;->onTutorialMode()V

    goto/16 :goto_0

    :pswitch_2b
    const-string v3, "Camera3"

    const-string v4, " START FLASH TTS"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startFlashTTS()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :pswitch_2c
    :try_start_9
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->restoreTransitionAnimation()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2d
    const-string v3, "Camera3"

    const-string v4, "COVER_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleHideCoverCamera()V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/subview/SubViewManager;->setLandscapeMode(Z)V

    goto/16 :goto_0

    :pswitch_2f
    const-string v3, "Camera3"

    const-string v4, "Timeout capture by HRM sensor"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->setHRMCapturestarted(Z)V

    goto/16 :goto_0

    :pswitch_30
    const-string v3, "Camera3"

    const-string v4, "show HRM disable msg"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/Camera;->mIsShowSmartSelfie:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShootingModeDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShootingModeDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c02ae

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_31
    const-string v3, "Camera3"

    const-string v4, "HELP_TUTORIAL_SET_MSG"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_1f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->setTutorial(I)V

    goto/16 :goto_0

    :cond_1f
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    const/16 v4, 0xca

    if-ne v3, v4, :cond_20

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->setTutorial(I)V

    goto/16 :goto_0

    :cond_20
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$4;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->setTutorial(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_c
        :pswitch_1
        :pswitch_16
        :pswitch_2
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_7
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2d
        :pswitch_2c
        :pswitch_2e
        :pswitch_2f
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
