.class public Lcom/android/incallui/InCallButtonVideoFragment;
.super Lcom/android/incallui/CallButtonFragment;
.source "InCallButtonVideoFragment.java"

# interfaces
.implements Lcom/android/incallui/vt/VTStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallButtonVideoFragment$1;,
        Lcom/android/incallui/InCallButtonVideoFragment$SwitchCameraTask;
    }
.end annotation


# instance fields
.field private isHDVideoConf:Z

.field private mAllHiddenButtonContainer:Landroid/view/View;

.field private mButtonContainer:Landroid/view/View;

.field private mCameraOffButton:Landroid/view/View;

.field private mCameraOffButton2:Landroid/view/View;

.field private mCameraOnButton:Landroid/view/View;

.field private mChangeToVideo:Landroid/widget/Button;

.field private mHideShowToggleButton:Landroid/widget/ToggleButton;

.field private mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

.field private mInVTCallMenu:Lcom/android/incallui/InCallMenu;

.field private mModifyCallButtonContainer:Landroid/widget/LinearLayout;

.field private mModifyCallOptionContainer:Landroid/widget/LinearLayout;

.field private mModifyPanel:Landroid/widget/LinearLayout;

.field private mMuteToggleButton:Landroid/widget/ToggleButton;

.field private mOneWayButton:Landroid/widget/Button;

.field private mPrevActiveCallType:I

.field private mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

.field private mPrimaryUpgradeButtonDivider1:Landroid/widget/ImageView;

.field private mSpeakerToggleButton:Landroid/widget/ToggleButton;

.field private mStayOnVoice:Landroid/widget/Button;

.field private mSwitchCallButtons:Landroid/view/View;

.field private mSwitchCameraButton:Landroid/widget/Button;

.field private mSwitchCameraButton2:Landroid/view/View;

.field private mSwitchVCButton:Landroid/widget/ImageButton;

.field private mSwitchVTButton:Landroid/widget/ImageButton;

.field private mTwoWayButton:Landroid/widget/Button;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mcancelUpgradeOptionsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrevActiveCallType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->isHDVideoConf:Z

    return-void
.end method

.method private enableSwitchButton2(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getPrimaryCallBannerVisibility()I
    .locals 3

    const/4 v1, 0x4

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getPrimaryCallBannerView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getPrimaryCallBannerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    :cond_0
    return v1
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private handleModifyOptionClick(I)V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const v2, 0x7f0e00f0

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->updateModifyPannel()V

    return-void

    :cond_1
    const v2, 0x7f0e0155

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0e0156

    if-ne p1, v2, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    :cond_4
    const v2, 0x7f0e0158

    if-ne p1, v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->updateFragmentforModificationInitiated()V

    goto :goto_0
.end method

.method private isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showModifyCallOptions()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "showModifyCallOptions"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, -0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallOptionContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallOptionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showOutgoingButtons(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->setHideShowButton(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPrimaryCallBanner(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryVisible(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonVideoFragment;->updateSwitchButtonLayout(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonVideoFragment;->updatePreviewEffectLayout(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryVisible(Z)V

    goto :goto_0
.end method

.method private startAnimation(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private toggleHideShow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleHideShow isShowMe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "camera is not allowed, return"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f090149

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->setHideShowButton(Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->sendStillImage()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->sendLiveVideo()V

    goto :goto_0
.end method

.method private updateButtonState(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->showOutgoingButtons(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableGroupCall(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonVideoFragment;->showGroupCall(Z)V

    return-void
.end method

.method public enableSwitchButton(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    instance-of v2, v2, Lcom/android/incallui/vt/InCSVTCallMenu;

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lcom/android/incallui/vt/InCSVTCallMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/InCSVTCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    instance-of v2, v2, Lcom/android/incallui/vt/InPSVTCallMenu;

    if-nez v2, :cond_2

    :cond_5
    new-instance v2, Lcom/android/incallui/vt/InPSVTCallMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    goto :goto_1
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f110001

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCameraEvent(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton(Z)V

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton2(Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->setHideShowButton(Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getNearEndAnimationImageView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/InCallButtonVideoFragment;->startAnimation(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton2(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getNearEndAnimationImageView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/InCallButtonVideoFragment;->startAnimation(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptureAndRecordEvent(I)V
    .locals 0

    return-void
.end method

.method public onCastingEvent(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateInCallBanner()V

    :cond_1
    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onClick(Landroid/view/View;)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton(Z)V

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallButtonVideoFragment;->enableSwitchButton2(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getNearEndAnimationImageView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/incallui/InCallButtonVideoFragment;->startAnimation(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/incallui/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    new-instance v2, Lcom/android/incallui/InCallButtonVideoFragment$SwitchCameraTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/incallui/InCallButtonVideoFragment$SwitchCameraTask;-><init>(Lcom/android/incallui/InCallButtonVideoFragment;Lcom/android/incallui/InCallButtonVideoFragment$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->toggleHideShow()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sput-boolean v4, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    :cond_3
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    sget v3, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    sget v3, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "handle MODIFY_CALL_PROMPT_CONFIRMED, proceed..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/incallui/CallCommandClient;->respondModifyCall(IZ)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallCardPresenter;->setIsShowingModifyCallDialog(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->hideDialpadForModifyCall()V

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "handle MODIFY_CALL_PROMPT_CANCELED!"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/CallCommandClient;->respondModifyCall(IZ)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallCardPresenter;->setIsShowingModifyCallDialog(Z)V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->handleModifyOptionClick(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e00f0 -> :sswitch_a
        0x7f0e012c -> :sswitch_0
        0x7f0e0131 -> :sswitch_1
        0x7f0e0134 -> :sswitch_2
        0x7f0e0138 -> :sswitch_4
        0x7f0e0139 -> :sswitch_3
        0x7f0e013d -> :sswitch_6
        0x7f0e0140 -> :sswitch_5
        0x7f0e014c -> :sswitch_1
        0x7f0e0150 -> :sswitch_7
        0x7f0e0152 -> :sswitch_8
        0x7f0e0153 -> :sswitch_9
        0x7f0e0155 -> :sswitch_a
        0x7f0e0156 -> :sswitch_a
        0x7f0e0157 -> :sswitch_5
        0x7f0e0158 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/InVTCallMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/vt/InVTCallMenu;->dismissDialogs()V

    :cond_0
    return-void
.end method

.method public onEndCallButtonClicked()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ims_video_camera_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v0}, Lcom/android/incallui/vt/PreviewEffectUI;->isShowingEffectPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v0}, Lcom/android/incallui/vt/PreviewEffectUI;->cancelEffect()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->showModifyCall(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->showGroupCall(Z)V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f0e0151

    const v7, 0x7f0e014f

    const v6, 0x7f09014d

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onFinishInflate(Landroid/view/View;)V

    const v1, 0x7f0e0130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mButtonContainer:Landroid/view/View;

    const v1, 0x7f0e0135

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    const v1, 0x7f0e0131

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0e002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0e0134

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f0e0159

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    const v1, 0x7f0e0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f0e0138

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/android/incallui/vt/VideoCallManager;->addListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_4
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f0e0150

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v1

    sget v5, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v5, :cond_1a

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const v1, 0x7f0e0143

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrimaryUpgradeButtonDivider1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrimaryUpgradeButtonDivider1:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrimaryUpgradeButtonDivider1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const v1, 0x7f0e0140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    const v1, 0x7f0e013d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v1, 0x7f0e014c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v1, 0x7f0e013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0152

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    const v1, 0x7f0e0153

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->updateModifyPannel()V

    :cond_f
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_10
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_11
    const v1, 0x7f0e0154

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallOptionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0152

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const v1, 0x7f0e0153

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const v1, 0x7f0e0155

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mTwoWayButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v1, 0x7f0e0156

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mOneWayButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const v1, 0x7f0e0157

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const v1, 0x7f0e00f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const v1, 0x7f0e0158

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mcancelUpgradeOptionsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mcancelUpgradeOptionsButton:Landroid/widget/Button;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mcancelUpgradeOptionsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->updateModifyPannel()V

    :cond_19
    return-void

    :cond_1a
    move v1, v3

    goto/16 :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  title: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (MenuItem = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onMenuItemClick(Landroid/view/MenuItem;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onResume()V

    return-void
.end method

.method public onVideoCallEvent(I)V
    .locals 0

    return-void
.end method

.method public onVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 0

    return-void
.end method

.method public sendLiveVideo()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    return-void
.end method

.method public sendStillImage()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    return-void
.end method

.method public setAudio(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setAudio(I)V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSpeakerToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCallState(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallButtonVideoFragment;->updateButtonState(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->updateSwitchButtonLayout()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->updateModifyPannel()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrevActiveCallType:I

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public setHideShowButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibleByDialpad(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonVideoFragment;->showMute(Z)V

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->showDialPadButton(Z)V

    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->showLeftDialPadButton(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public setupActionBarItems(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupActionBarItems(Landroid/view/View;)V

    const v1, 0x7f0e00fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public showCallBannerByMenu(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallButtonVideoFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public showCameraEffectPanel(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const-string v1, "inflatePreviewEffectUI"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e01e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/vt/PreviewEffectUI;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI;->showEffectPanel()V

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->showPrimaryCallBanner(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showDialPadButton(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, v3, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallButtonVideoFragment;->showPrimaryCallBanner(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showEncryptCall(Z)V
    .locals 0

    return-void
.end method

.method public showGroupCall(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideShowButton(Z)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->setHideShowButton(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showLeftDialPadButton(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->showPrimaryCallBanner(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showModifyCall(Z)V
    .locals 2

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMute(Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwitchButton(Z)V
    .locals 3

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    const-string v2, "dcm_volte_keypad_enable_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->isHDVideoConf:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public startSwitchCameraEffect()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "startSwitchCameraEffect: Do Switch Camera..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getNearEndAnimationImageView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallButtonVideoFragment;->startAnimation(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    new-instance v0, Lcom/android/incallui/InCallButtonVideoFragment$SwitchCameraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallButtonVideoFragment$SwitchCameraTask;-><init>(Lcom/android/incallui/InCallButtonVideoFragment;Lcom/android/incallui/InCallButtonVideoFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public updateButtonLayoutByPenMultiWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getPrimaryCallBannerVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->updatePreviewEffectLayout(Z)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonVideoFragment;->updateSwitchButtonLayout(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateConfUI(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->isHDVideoConf:Z

    return-void
.end method

.method public updateInCallButton(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveDownToHide(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveUpToShow(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveDownToHide(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveUpToShow(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public updateModifyPannel()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreActiveCallType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrevActiveCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x7f020385

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    const v3, 0x7f090387

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f020384

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    const v3, 0x7f090389

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    sget-boolean v1, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eqz v1, :cond_4

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->showModifyCallOptions()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallOptionContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallOptionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v8, :cond_11

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_10

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_c
    :goto_2
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_f
    const-string v0, "updateModifyPannel getSuppService"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_11
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v7, :cond_15

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_15
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v6, :cond_18

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_16
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_18
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCameraButton2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mInCallButtonInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v0

    if-ne v0, v8, :cond_25

    iget v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrevActiveCallType:I

    if-eq v1, v6, :cond_21

    iget v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPrevActiveCallType:I

    if-ne v1, v7, :cond_24

    :cond_21
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    const v2, 0x7f090224

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mStayOnVoice:Landroid/widget/Button;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_23
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    if-ne v0, v7, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mModifyPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_24
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    const v2, 0x7f090387

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_25
    if-ne v0, v7, :cond_23

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mChangeToVideo:Landroid/widget/Button;

    const v2, 0x7f090388

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method public updatePreviewEffectLayout(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI;->isShowingEffectPanel()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    const-string v1, "hide_penwindow_indicator_area"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public updateSwitchButtonLayout()V
    .locals 6

    iget-object v3, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonVideoFragment;->getPrimaryCallBannerVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :goto_0
    if-eq v2, v1, :cond_1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string v3, "hide_penwindow_indicator_area"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0212

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    const-string v2, "ims_video_camera_effect"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v2}, Lcom/android/incallui/vt/PreviewEffectUI;->isShowingEffectPanel()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    const-string v2, "hide_penwindow_indicator_area"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallButtonVideoFragment;->mSwitchCallButtons:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method
