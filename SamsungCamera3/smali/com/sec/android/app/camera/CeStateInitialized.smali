.class public Lcom/sec/android/app/camera/CeStateInitialized;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateInitialized.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateInitialized"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "CeStateInitialized"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->imageStoringCompleted()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_6
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0xd -> :sswitch_7
        0xf -> :sswitch_5
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "CeStateInitialized"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "CeStateInitialized"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopEngineSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewDummySync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doTouchAE()V

    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doAutoNightSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSuperResolutionShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doTakePictureAsync()V

    move v0, v1

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetParameterSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetMultipleParametersSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPostInitSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doWaitAsync(I)V

    move v0, v1

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doProcessBackSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doShutterTimerAsync(I)V

    move v0, v1

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetOnShutterSound(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetTrackingVisibleSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPrepareVideoRecordingAsync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartVideoRecordingAsync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    move v0, v1

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCamcorderPreviewSync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCoverCamcorderPreviewSync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCameraPreviewSync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCoverCameraPreviewSync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetDualCaptureModeSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualPreviewSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doHideCoverCameraAsync()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetExternalShootingModesSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetFaceRetouchLevelSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetSlimFaceLevelSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEyeEnlargeLevelSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetLowLightBeauty()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_a
        0x3 -> :sswitch_1
        0x6 -> :sswitch_6
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_e
        0xa -> :sswitch_b
        0xd -> :sswitch_c
        0x18 -> :sswitch_d
        0x1b -> :sswitch_2
        0x1f -> :sswitch_9
        0x20 -> :sswitch_16
        0x21 -> :sswitch_14
        0x2c -> :sswitch_1a
        0x2e -> :sswitch_f
        0x31 -> :sswitch_19
        0x32 -> :sswitch_4
        0x34 -> :sswitch_18
        0x35 -> :sswitch_1b
        0x36 -> :sswitch_10
        0x39 -> :sswitch_1c
        0x3a -> :sswitch_1d
        0x3d -> :sswitch_17
        0x3e -> :sswitch_15
        0x3f -> :sswitch_5
        0x40 -> :sswitch_3
        0x41 -> :sswitch_1e
        0x42 -> :sswitch_1f
        0x43 -> :sswitch_20
        0x65 -> :sswitch_11
        0x66 -> :sswitch_12
        0x69 -> :sswitch_13
    .end sparse-switch
.end method
