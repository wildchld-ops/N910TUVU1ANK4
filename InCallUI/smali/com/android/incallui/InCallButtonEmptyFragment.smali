.class public Lcom/android/incallui/InCallButtonEmptyFragment;
.super Lcom/android/incallui/CallButtonFragment;
.source "InCallButtonEmptyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public displayDialpad(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 0
    .param p1    # Z
    .param p2    # Z

    return-void
.end method

.method public displayManageConferencePanel(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public enableAddCall(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public enableDecorationButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public enableHold(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public enableMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public enableRecord(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public enableSwitchButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideExtraRow()V
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method public onOpenCloseDialpad(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setAudio(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setHideShowButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setHold(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setVisibleByDialpad(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 0

    return-void
.end method

.method public showAddCall(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showCanCelButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showDecorationButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showDialPadButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showEasyExtraRow(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showEncryptCall(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showExtraRow()V
    .locals 0

    return-void
.end method

.method public showGroupCall(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showHDVoiceIcon(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showHideShowButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showHold(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showLeftDialPadButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showMemoryFullDialog()V
    .locals 0

    return-void
.end method

.method public showMerge(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showModifyCall(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showRecord(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showRecordToast()V
    .locals 0

    return-void
.end method

.method public showSeekBar(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public showStopButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showSwap(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showSwitchButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public startSwitchCameraEffect()V
    .locals 0

    return-void
.end method

.method public updateConfUI(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public updateDiapadButton()V
    .locals 0

    return-void
.end method

.method public updatePreviewEffectLayout(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 0

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method
