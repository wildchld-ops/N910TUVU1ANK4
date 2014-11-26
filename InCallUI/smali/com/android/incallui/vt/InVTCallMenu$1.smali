.class Lcom/android/incallui/vt/InVTCallMenu$1;
.super Ljava/lang/Object;
.source "InVTCallMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/InVTCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/vt/InVTCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$000(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    const-string v1, "ims_video_outgoing_image_picture"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$200(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$300(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090194

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # setter for: Lcom/android/incallui/vt/InVTCallMenu;->mIsSelectedImage:Z
    invoke-static {v1, v4}, Lcom/android/incallui/vt/InVTCallMenu;->access$402(Lcom/android/incallui/vt/InVTCallMenu;Z)Z

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$500(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videoAlertShowNeverAgain"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    const-string v2, "selectImageFromMyFiles:: Image Dialog Shown"

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # invokes: Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V
    invoke-static {v1, v6}, Lcom/android/incallui/vt/InVTCallMenu;->access$600(Lcom/android/incallui/vt/InVTCallMenu;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->selectOutgoingImageFromMyFiles()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$700(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090192

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "volte_jpn_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "common_volte_in"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "common_volte_hk"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/CallButtonPresenter;->captureSurfaceImage(Z)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    const-string v1, "ims_video_outgoing_image_picture"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->captureOutgoingImage()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndCaptureAnimation()V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$800(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090158

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # setter for: Lcom/android/incallui/vt/InVTCallMenu;->mIsSelectedImage:Z
    invoke-static {v1, v5}, Lcom/android/incallui/vt/InVTCallMenu;->access$402(Lcom/android/incallui/vt/InVTCallMenu;Z)Z

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$900(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videoAlertShowNeverAgain"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    const-string v2, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # invokes: Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V
    invoke-static {v1, v6}, Lcom/android/incallui/vt/InVTCallMenu;->access$600(Lcom/android/incallui/vt/InVTCallMenu;I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$1000(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    const/16 v2, 0x12c

    # invokes: Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/incallui/vt/InVTCallMenu;->access$600(Lcom/android/incallui/vt/InVTCallMenu;I)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/vt/VideoCallManager;->recordVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndRecordingInfo(Z)V

    goto/16 :goto_0
.end method
