.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;
.super Ljava/lang/Object;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

.field final synthetic val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v9, 0x8

    const/4 v4, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_READY]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_STARTED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorMessage:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iput-object v8, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    goto :goto_0

    :pswitch_2
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_SETTLED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-direct {v2, v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v2, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->scan()V

    goto :goto_0

    :pswitch_3
    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventId[EVENT_ENROLL_STATUS] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iput-object v8, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v4, :cond_6

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventStatus[STATUS_SENSOR_ERROR]  => sensor is removed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$402(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v2

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$802(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$902(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const v3, 0x7f0918cb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$900(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventId[STATUS_CAPTURE_FAILED]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v3, v3, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->scanFail()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_FINISHED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventResult[RESULT_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_7

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventStatus[STATUS_OPERATION_DENIED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v6, :cond_8

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventStatus[STATUS_ALREADY_REGISTERED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const/16 v2, 0x65

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuideDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventStatus[STATUS_QUALITY_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v9, :cond_a

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventStatus[STATUS_USER_CANCELLED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v4, :cond_c

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventStatus[STATUS_SENSOR_ERROR] => sensor is not found"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$402(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    goto/16 :goto_0

    :cond_c
    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no reason any other reason!!![evt.eventStatus] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v3, v3, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "eventResult[RESULT_SUCCESS]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const/4 v2, 0x5

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091899

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1502(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1602(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2202(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1600(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
