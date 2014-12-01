.class public Lcom/android/incallui/vt/CsVTStackStateListener;
.super Ljava/lang/Object;
.source "CsVTStackStateListener.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/vt/CsVTStackStateListener$1;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/vt/CsVTStackStateListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CsVTStackStateListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside VTStackStateListener: onStateChanged State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/vt/CsVTStackStateListener;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    sget-object v2, Lcom/android/incallui/vt/CsVTStackStateListener$1;->$SwitchMap$siso$vt$VTManager$VTEventForUI:[I

    invoke-virtual {p1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xc9

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xca

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xcb

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xcc

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->mediaDeInit()V

    const/16 v0, 0xcd

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->stopVTCall()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->cleanupCall()V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xd0

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd1

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xd4

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xd5

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xd2

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xd2

    invoke-virtual {v1, v0, p2}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x191

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x192

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x193

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x194

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x194

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x1f5

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x1f6

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x1f7

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x1f8

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_16
    const/16 v0, 0x259

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_17
    const/16 v0, 0x25a

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_18
    const/16 v0, 0x25b

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_19
    const/16 v0, 0x25c

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1a
    const/16 v0, 0x25d

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1b
    const/16 v0, 0x25e

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1c
    const/16 v0, 0x25f

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1d
    const/16 v0, 0x260

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1e
    const/16 v0, 0x65

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_1f
    const/16 v0, 0x66

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_20
    const/16 v0, 0x67

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_21
    const/16 v0, 0x68

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
