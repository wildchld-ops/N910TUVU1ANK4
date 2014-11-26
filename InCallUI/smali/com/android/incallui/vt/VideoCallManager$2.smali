.class Lcom/android/incallui/vt/VideoCallManager$2;
.super Landroid/os/Handler;
.source "VideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/vt/VideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/VideoCallManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/vt/VideoCallManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->access$400(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->access$500(Lcom/android/incallui/vt/VideoCallManager;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/incallui/vt/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/android/incallui/vt/VideoCallManager;->access$600(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->access$500(Lcom/android/incallui/vt/VideoCallManager;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->deleteFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/vt/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->updateSelectedVideoFromGallery(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->access$700(Lcom/android/incallui/vt/VideoCallManager;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/incallui/vt/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-boolean v0, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedCapture:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnimationCapture(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iput-boolean v3, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedCapture:Z

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-boolean v0, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedRecord:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnimationRecord(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iput-boolean v3, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedRecord:Z

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-boolean v0, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    const-string v1, "data/data/com.android.incallui/files/during_vt_photo.jpg"

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-boolean v0, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-boolean v0, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/vt/VTCallState;->mSelectedVideoFileName:Ljava/lang/String;

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->showVideo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->access$800(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-boolean v0, v0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->showVideo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->access$800(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->sendLiveVideo()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/VideoCallManager;->dualCamera(Z)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    const-string v1, "Low memory"

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->access$400(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v4}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingFarEndView(Z)V

    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showStopButton(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v4}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingNearEndView(Z)V

    goto :goto_1

    :sswitch_7
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    const-string v1, "Start recording near end view"

    # invokes: Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->access$400(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v4}, Lcom/android/incallui/vt/VideoCallManager;->recordVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndRecordingInfo(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x191 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_7
    .end sparse-switch
.end method
