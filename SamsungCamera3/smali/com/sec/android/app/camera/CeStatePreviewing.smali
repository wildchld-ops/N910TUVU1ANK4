.class public Lcom/sec/android/app/camera/CeStatePreviewing;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStatePreviewing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStatePreviewing"


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

    const-string v0, "CeStatePreviewing"

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
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->autoFocusCompleted()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->imageStoringCompleted()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_3
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_c
        0xb -> :sswitch_9
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_8
        0xf -> :sswitch_1
        0x65 -> :sswitch_b
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "CeStatePreviewing"

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

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "CeStatePreviewing"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewDummySync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCamcorderPreviewSync()V

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCoverCamcorderPreviewSync()V

    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCameraPreviewSync()V

    move v0, v1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCoverCameraPreviewSync()V

    move v0, v1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopEngineSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doAutoFocusAsync()V

    move v0, v1

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doTouchAE()V

    move v0, v1

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetParameterSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetMultipleParametersSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doShutterTimerAsync(I)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartSmileDetectionAsync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopSmileDetectionSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doWaitAsync(I)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartBurstAsync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopBurstSync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPanoramaAsync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartUltraWideShotAsync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopUltraWideShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartActionShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopActionShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doProcessBackSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetOnShutterSound(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDramaShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopDramaShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartMagicShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopMagicShotSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPrepareVideoRecordingAsync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartVideoRecordingAsync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetSingleEffect()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStartSound()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualCameraSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualPreviewSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartRecordDualPreviewSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetTrackingVisibleSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetSingleEffectSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetDualCaptureModeSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doHideCoverCameraAsync()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetExternalShootingModesSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetFaceRetouchLevelSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetSlimFaceLevelSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEyeEnlargeLevelSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetLowLightBeauty()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2a
        :pswitch_1e
        :pswitch_1f
        :pswitch_2f
        :pswitch_30
        :pswitch_16
        :pswitch_17
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method
