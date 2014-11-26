.class public interface abstract Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
.super Ljava/lang/Object;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallButtonUi"
.end annotation


# virtual methods
.method public abstract changeArrow(I)V
.end method

.method public abstract displayDialpad(Z)V
.end method

.method public abstract displayManageConferencePanel(Z)V
.end method

.method public abstract enableAddCall(Z)V
.end method

.method public abstract enableDecorationButton(Z)V
.end method

.method public abstract enableDialpad(Z)V
.end method

.method public abstract enableGroupCall(Z)V
.end method

.method public abstract enableHold(Z)V
.end method

.method public abstract enableMute(Z)V
.end method

.method public abstract enableRecord(Z)V
.end method

.method public abstract enableSwitchButton(Z)V
.end method

.method public abstract getPromotedButton()Landroid/widget/Button;
.end method

.method public abstract getShareButton()Landroid/widget/Button;
.end method

.method public abstract hideExtraRow()V
.end method

.method public abstract isDialpadVisible()Z
.end method

.method public abstract isEnableDialpad()Z
.end method

.method public abstract isManageConferencePanelVisible()Z
.end method

.method public abstract onEndCallButtonClicked()V
.end method

.method public abstract onOpenCloseDialpad(Z)V
.end method

.method public abstract setAudio(I)V
.end method

.method public abstract setCallState(I)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHideShowButton(Z)V
.end method

.method public abstract setHold(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setSupportedAudio(I)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setupRcsCallButtons()V
.end method

.method public abstract showAddCall(Z)V
.end method

.method public abstract showCameraEffectPanel(Z)V
.end method

.method public abstract showCanCelButton(Z)V
.end method

.method public abstract showDecorationButton(Z)V
.end method

.method public abstract showDialPadButton(Z)V
.end method

.method public abstract showEasyExtraRow(Z)V
.end method

.method public abstract showEncryptCall(Z)V
.end method

.method public abstract showExtraRow()V
.end method

.method public abstract showHDVoiceIcon(Z)V
.end method

.method public abstract showHideShowButton(Z)V
.end method

.method public abstract showHold(Z)V
.end method

.method public abstract showLeftDialPadButton(Z)V
.end method

.method public abstract showMemoryFullDialog()V
.end method

.method public abstract showMerge(Z)V
.end method

.method public abstract showModifyCall(Z)V
.end method

.method public abstract showMute(Z)V
.end method

.method public abstract showRecord(Z)V
.end method

.method public abstract showRecordToast()V
.end method

.method public abstract showSeekBar(I)V
.end method

.method public abstract showStopButton(Z)V
.end method

.method public abstract showSwap(Z)V
.end method

.method public abstract showSwitchButton(Z)V
.end method

.method public abstract startSwitchCameraEffect()V
.end method

.method public abstract updateConfUI(Z)V
.end method

.method public abstract updateDiapadButton()V
.end method

.method public abstract updateInCallButton(Z)V
.end method

.method public abstract updateModifyPannel()V
.end method

.method public abstract updatePreviewEffectLayout(Z)V
.end method

.method public abstract updateSwitchButtonLayout()V
.end method

.method public abstract updateSwitchButtonLayout(Z)V
.end method
