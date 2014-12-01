.class public Lcom/android/incallui/vt/IMSMediaStateListener;
.super Ljava/lang/Object;
.source "IMSMediaStateListener.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/vt/IMSMediaStateListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method onCameraEvent(IZ)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraEvent sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    const/16 v0, 0x65

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x67

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    goto :goto_0
.end method

.method onCameraFirstFrameReady(I)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraFirstFrameReady sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    const/16 v0, 0x68

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    :cond_0
    return-void
.end method

.method onCameraSwitchFailure(II)V
    .locals 4

    const-string v1, "[IMSMediaStateListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSwitchFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraSwitchFail(I)V

    :cond_0
    return-void
.end method

.method onCaptureFailure(IZ)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureFailure sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isNearEnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    const/16 v0, 0x130

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12e

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0
.end method

.method onCaptureSuccess(IZLjava/lang/String;)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureSuccess sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isNearEnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1, p3}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    const/16 v0, 0x12f

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12d

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0
.end method

.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 4

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "sessionid"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "success"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCameraEvent(IZ)V

    goto :goto_0

    :sswitch_1
    const-string v1, "sessionid"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/IMSMediaStateListener;->onVideoAvailable(I)V

    goto :goto_0

    :sswitch_2
    const-string v1, "sessionid"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "isnearend"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "filename"

    invoke-virtual {p3, v3}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "sessionid"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "isnearend"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCaptureFailure(IZ)V

    goto :goto_0

    :sswitch_4
    const-string v1, "sessionid"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCameraFirstFrameReady(I)V

    goto :goto_0

    :sswitch_5
    const-string v1, "sessionid"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cameraid"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCameraSwitchFailure(II)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/vt/IMSMediaStateListener;->onVideoHeld()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/vt/IMSMediaStateListener;->onVideoResumed()V

    goto :goto_0

    :sswitch_8
    const-string v1, "epdgunavailablereason"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/IMSMediaStateListener;->onWeakWifi(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7e9 -> :sswitch_8
        0xbb9 -> :sswitch_0
        0xbbb -> :sswitch_1
        0xbbc -> :sswitch_2
        0xbbd -> :sswitch_3
        0xbbe -> :sswitch_6
        0xbbf -> :sswitch_7
        0xbc0 -> :sswitch_4
        0xbc2 -> :sswitch_5
    .end sparse-switch
.end method

.method onVideoAvailable(I)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoAvailable sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    const/16 v0, 0xc9

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarFrameReady(Z)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    :cond_0
    return-void
.end method

.method onVideoHeld()V
    .locals 4

    const-string v2, "[IMSMediaStateListener]"

    const-string v3, "onVideoHeld"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    const/16 v0, 0xd6

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    :cond_0
    return-void
.end method

.method onVideoResumed()V
    .locals 4

    const-string v2, "[IMSMediaStateListener]"

    const-string v3, "onVideoResumed"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    const/16 v0, 0xd7

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    :cond_0
    return-void
.end method

.method onWeakWifi(I)V
    .locals 3

    const-string v0, "[IMSMediaStateListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWeakWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v0, 0x401

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->onWeakWifi()V

    :cond_0
    return-void
.end method
