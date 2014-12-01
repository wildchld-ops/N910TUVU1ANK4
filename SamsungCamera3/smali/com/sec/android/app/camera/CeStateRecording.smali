.class public Lcom/sec/android/app/camera/CeStateRecording;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateRecording.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateRecording"


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
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->handleVideoRecordingStarted()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "CeStateRecording"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doWaitAsync(I)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doProcessBackSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPauseVideoRecordingSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doResumeVideoRecordingSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    move v0, v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doAutoFocusAsync()V

    move v0, v1

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doTakeVideoSnapShotAsync()V

    move v0, v1

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetExternalShootingModesSync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCommonEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetOnShutterSound(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0xd -> :sswitch_0
        0x18 -> :sswitch_1
        0x2e -> :sswitch_b
        0x31 -> :sswitch_8
        0x39 -> :sswitch_a
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_5
    .end sparse-switch
.end method
