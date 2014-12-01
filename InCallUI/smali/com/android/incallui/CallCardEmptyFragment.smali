.class public Lcom/android/incallui/CallCardEmptyFragment;
.super Lcom/android/incallui/CallCardFragment;
.source "CallCardEmptyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public changeVideoLocation(IZ)V
    .locals 0

    return-void
.end method

.method public clearAnswerMemoViews()V
    .locals 0

    return-void
.end method

.method public clearCallerInfoCard()V
    .locals 0

    return-void
.end method

.method public dismissModifyCallDialog()V
    .locals 0

    return-void
.end method

.method public displayManageConferencePanel(Z)V
    .locals 0

    return-void
.end method

.method public enableCallerInfoCard(Z)V
    .locals 0

    return-void
.end method

.method public getNearEndAnimationImageView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryCallBannerView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceViewHeight(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSurfaceViewWidth(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public infoVoiceRecording(I)V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferencePanelVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public manageAddCall(ZZ)V
    .locals 0

    return-void
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0

    return-void
.end method

.method public manageHoldBtn(ZZZZ)V
    .locals 0

    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0

    return-void
.end method

.method public manageRecordInfo(ZZ)V
    .locals 0

    return-void
.end method

.method public manageVideoBtn(ZZI)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setActionMemoFilePath(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setActionMemoFilePath(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setCallCharge(Z)V
    .locals 0

    return-void
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCardName(I)V
    .locals 0

    return-void
.end method

.method public setECMCardTitle(Lcom/android/services/telephony/common/Call;I)V
    .locals 0

    return-void
.end method

.method public setEriInfo(Lcom/android/services/telephony/common/Call;I)V
    .locals 0

    return-void
.end method

.method public setIncomingHideButton(Z)V
    .locals 0

    return-void
.end method

.method public setLineControlEvent(B)V
    .locals 0

    return-void
.end method

.method public setPresenceIcon(I)V
    .locals 0

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V
    .locals 0

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public setPrimaryCdnipNumber(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryCnapName(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhotoVisible(Z)V
    .locals 0

    return-void
.end method

.method public setPrimarySimIconLabel(I)V
    .locals 0

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0

    return-void
.end method

.method public setSecondCallElapsedTime(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0

    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method

.method public setVisibleCameraPreview(Z)V
    .locals 0

    return-void
.end method

.method public showAnimationCapture(Z)V
    .locals 0

    return-void
.end method

.method public showAnimationRecord(Z)V
    .locals 0

    return-void
.end method

.method public showAnswerMemoRecordingView()V
    .locals 0

    return-void
.end method

.method public showCallerInfoCard(ZZ)V
    .locals 0

    return-void
.end method

.method public showExtraVolButton(Z)V
    .locals 0

    return-void
.end method

.method public showFarEndCaptureAnimation()V
    .locals 0

    return-void
.end method

.method public showFarEndRecordingInfo(Z)V
    .locals 0

    return-void
.end method

.method public showGuidancePlayingView()V
    .locals 0

    return-void
.end method

.method public showHDIcon(Z)V
    .locals 0

    return-void
.end method

.method public showIncomingHideButton(Z)V
    .locals 0

    return-void
.end method

.method public showIncomingMsgForInternationalCall(I)V
    .locals 0

    return-void
.end method

.method public showIncomingPopupForSecondCall(II)V
    .locals 0

    return-void
.end method

.method public showMenu(Z)V
    .locals 0

    return-void
.end method

.method public showModifyCall(Z)V
    .locals 0

    return-void
.end method

.method public showNearEndCaptureAnimation()V
    .locals 0

    return-void
.end method

.method public showNearEndRecordingInfo(Z)V
    .locals 0

    return-void
.end method

.method public showWebEx(Z)V
    .locals 0

    return-void
.end method

.method public startCallCardAnimation(Z)V
    .locals 0

    return-void
.end method

.method public stopCallCardAnimation()V
    .locals 0

    return-void
.end method

.method public supportedAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public updateAnswerMemoRecordTime()V
    .locals 0

    return-void
.end method

.method public updateCallerInfoCard(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    return-void
.end method

.method public updateConfUI(Z)V
    .locals 0

    return-void
.end method

.method public updateExtraVolumeStatus()V
    .locals 0

    return-void
.end method

.method public updateFarEndPreparingAnimationImage(Z)V
    .locals 0

    return-void
.end method

.method public updateIncomingModifyCall(I)V
    .locals 0

    return-void
.end method

.method public updateModifyCallRequest()V
    .locals 0

    return-void
.end method

.method public updateRecordTime()V
    .locals 0

    return-void
.end method
