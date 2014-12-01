.class final Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x2f

    const/4 v4, 0x5

    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] focusState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput p1, v0, Lcom/sec/android/app/camera/CommonEngine;->mAfMsg:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAeAwbLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAeAwbLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFocusIndicator()V

    :cond_5
    if-ne p1, v8, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-ne v0, v6, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v4, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-ne v0, v6, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v4, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v7, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    :cond_d
    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v6, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAeAwbLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v7, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v7, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v5, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTouchAEActive()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    :cond_13
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto :goto_1

    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto :goto_1

    :cond_17
    if-ne p1, v4, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v6, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAeAwbLocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v8, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v8, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_12

    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_1

    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_1

    :cond_1e
    if-ne p1, v6, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v6, :cond_20

    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAeAwbLocked()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1000(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v7, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v7, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_21

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_1

    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto :goto_2

    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto :goto_2

    :cond_25
    if-ne p1, v7, :cond_26

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    goto/16 :goto_1

    :cond_26
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v6, :cond_28

    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAeAwbLocked()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1000(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v8, :cond_2a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v8, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_1

    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto :goto_3

    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto :goto_3
.end method
