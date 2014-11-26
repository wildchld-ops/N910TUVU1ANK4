.class public interface abstract Lcom/android/incallui/CallCardPresenter$CallCardUi;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallCardUi"
.end annotation


# virtual methods
.method public abstract changeVideoLocation(IZ)V
.end method

.method public abstract clearAnswerMemoViews()V
.end method

.method public abstract clearCallerInfoCard()V
.end method

.method public abstract dismissModifyCallDialog()V
.end method

.method public abstract dismissVoLTEDialogs()V
.end method

.method public abstract displayManageConferencePanel(Z)V
.end method

.method public abstract enableCallerInfoCard(Z)V
.end method

.method public abstract getNearEndAnimationImageView()Landroid/view/View;
.end method

.method public abstract getPrimaryCallBannerView()Landroid/view/View;
.end method

.method public abstract getPrimaryName()Ljava/lang/String;
.end method

.method public abstract getSurfaceViewHeight(I)I
.end method

.method public abstract getSurfaceViewWidth(I)I
.end method

.method public abstract hideDialpadOnCameraEvent()V
.end method

.method public abstract infoVoiceRecording(I)V
.end method

.method public abstract initView()V
.end method

.method public abstract isDialpadVisible()Z
.end method

.method public abstract manageAddCall(ZZ)V
.end method

.method public abstract manageAnswerMemoRecord(Z)V
.end method

.method public abstract manageHoldBtn(ZZZZ)V
.end method

.method public abstract manageMultiTouchStub(Z)V
.end method

.method public abstract manageRecordInfo(ZZ)V
.end method

.method public abstract manageSecondaryControlBtn(ZZZ)V
.end method

.method public abstract manageVideoBtn(ZZI)V
.end method

.method public abstract onWeakWifi()V
.end method

.method public abstract setActionMemoFilePath(ILjava/lang/String;)V
.end method

.method public abstract setActionMemoFilePath(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCallCharge(Z)V
.end method

.method public abstract setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCardName(I)V
.end method

.method public abstract setECMCardTitle(Lcom/android/services/telephony/common/Call;I)V
.end method

.method public abstract setEriInfo(Lcom/android/services/telephony/common/Call;I)V
.end method

.method public abstract setIncomingHideButton(Z)V
.end method

.method public abstract setLineControlEvent(B)V
.end method

.method public abstract setPresenceIcon(I)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZLjava/lang/String;J)V
.end method

.method public abstract setPrimaryCdnipNumber(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryCityId(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryCnapName(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setPrimaryName(Ljava/lang/String;Z)V
.end method

.method public abstract setPrimaryPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
.end method

.method public abstract setPrimarySimIconLabel(I)V
.end method

.method public abstract setPrimaryVisible(Z)V
.end method

.method public abstract setSecondCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public abstract setSecondaryCallElapsedTime(ZLjava/lang/String;J)V
.end method

.method public abstract setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setVisibleCameraPreview(Z)V
.end method

.method public abstract showAnimationCapture(Z)V
.end method

.method public abstract showAnimationRecord(Z)V
.end method

.method public abstract showAnswerMemoRecordingView()V
.end method

.method public abstract showCallerInfoCard(ZZ)V
.end method

.method public abstract showDragModeButton(Z)V
.end method

.method public abstract showEncryptCall(Z)V
.end method

.method public abstract showEpdgIcon(Z)V
.end method

.method public abstract showExtraVolButton(Z)V
.end method

.method public abstract showFarEndCaptureAnimation()V
.end method

.method public abstract showFarEndRecordingInfo(Z)V
.end method

.method public abstract showGuidancePlayingView()V
.end method

.method public abstract showHDIcon(Z)V
.end method

.method public abstract showHDVoiceCallIcon(Z)V
.end method

.method public abstract showHDVoiceIcon(ZZ)V
.end method

.method public abstract showHighQualitySoundText(Z)V
.end method

.method public abstract showHoldBanner(Z)V
.end method

.method public abstract showIncomingMsgForInternationalCall(I)V
.end method

.method public abstract showIncomingPopupForSecondCall(II)V
.end method

.method public abstract showMenu(Z)V
.end method

.method public abstract showMiniModeButton(Z)V
.end method

.method public abstract showModifyCall(Z)V
.end method

.method public abstract showNearEndCaptureAnimation()V
.end method

.method public abstract showNearEndDocomoImage()V
.end method

.method public abstract showNearEndRecordingInfo(Z)V
.end method

.method public abstract showOnHoldText(Z)V
.end method

.method public abstract showPrimaryNsriSecureCallTitle(Z)V
.end method

.method public abstract showSecondaryHDVoiceIcon(ZZ)V
.end method

.method public abstract showSecondaryVideoIcon(Z)V
.end method

.method public abstract showWebEx(Z)V
.end method

.method public abstract startCallCardAnimation(Z)V
.end method

.method public abstract stopCallCardAnimation()V
.end method

.method public abstract supportedAudioModeChanged()V
.end method

.method public abstract updateAnswerMemoRecordTime()V
.end method

.method public abstract updateCallerInfoCard(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
.end method

.method public abstract updateConfUI(Z)V
.end method

.method public abstract updateExtraVolumeStatus()V
.end method

.method public abstract updateFarEndPreparingAnimationImage(Z)V
.end method

.method public abstract updateInCallBanner()V
.end method

.method public abstract updateIncomingModifyCall(I)V
.end method

.method public abstract updateModifyCallRequest()V
.end method

.method public abstract updateRecordTime()V
.end method
