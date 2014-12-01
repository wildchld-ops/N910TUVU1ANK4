.class public abstract Lcom/android/incallui/EndCallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "EndCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/EndCallButtonPresenter;",
        "Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private mCreateButton:Landroid/widget/Button;

.field private mDividerView:Landroid/view/View;

.field private mEndCallButtonsBgLayout:Landroid/view/ViewGroup;

.field private mEndCallButtonsLayout:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mIpCallButton:Landroid/widget/Button;

.field private mOrientation:I

.field private mSaveButtonFrame:Landroid/view/ViewGroup;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mViewButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallSim1Button:Landroid/widget/Button;

.field private mVoiceCallSim2Button:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mOrientation:I

    new-instance v0, Lcom/android/incallui/EndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/EndCallButtonFragment$1;-><init>(Lcom/android/incallui/EndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/EndCallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method createPresenter()Lcom/android/incallui/EndCallButtonPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragment;->createPresenter()Lcom/android/incallui/EndCallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public enableAllButtons(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->enableVoiceCall(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->enableVideoCall(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->enableSendMessage(Z)V

    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->enableIpCall(Z)V

    :cond_0
    return-void
.end method

.method public enableCreateContact(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableIpCall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableSendMessage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableUpdateExisting(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableVideoCall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableViewContact(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableVoiceCall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method getUi()Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragment;->getUi()Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public getVisibile()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideDelayedEndCallButtonsLayout()V
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsBgLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsBgLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    :cond_1
    const-string v1, "feature_skt_tphone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "hideDelayedEndCallButtonsLayout : tphone mode"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hideDelayedEndCallButtonsLayout send SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->createContactClicked()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->updateExistingClicked()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->viewContactClicked()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->videoCallClicked()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->sendMessageClicked()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->ipCallClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f0
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04002f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0e00f7

    const/4 v3, 0x0

    const v1, 0x7f0e00ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0e00f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsBgLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0e00f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mSaveButtonFrame:Landroid/view/ViewGroup;

    const v1, 0x7f0e00f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0e00f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f0e00f6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f0e004c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mDividerView:Landroid/view/View;

    const v1, 0x7f0e00f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v1, 0x7f0e00f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mSendMsgButton:Landroid/widget/Button;

    const-string v1, "change_message_icon_for_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mSendMsgButton:Landroid/widget/Button;

    const v2, 0x7f0203c6

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const-string v1, "ip_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0e00fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const-string v1, "change_order_of_endcall_buttons"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const v1, 0x7f0e00fb

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-nez v1, :cond_b

    const-string v1, "mVideoCallButton is null"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const v1, 0x7f0e00f7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_0
    const-string v1, "disable_button_sound_effects_redial"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_e
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->updateMultiSimEndCallButton(Landroid/view/View;)V

    :cond_f
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflate exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallLongClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragment;->hideDelayedEndCallButtonsLayout()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAllButtons(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->showCreateContact(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->showUpdateExisting(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->showViewContact(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->showSaveButtonFrame(Z)V

    return-void
.end method

.method public showCreateContact(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mDividerView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public showDelayedEndCallButtonsLayout()V
    .locals 2

    const-string v0, "showDelayedEndCallButtonsLayout"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hasLiveCall(), mEndCallButtonsLayout is GONE"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragment;->updateOneHandMode()V

    goto :goto_0
.end method

.method public showSaveButtonFrame(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mSaveButtonFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mSaveButtonFrame:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showUpdateExisting(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mUpdateButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showVideoCall(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showViewContact(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_1
.end method

.method public updateEndCallButtonDrawable()V
    .locals 11

    const v10, 0x7f0203e4

    const v9, 0x7f0203b6

    const v8, 0x7f0203b2

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    const-string v5, "display_hd_icon"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "hd_voice_network_prefer"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_1
    const-string v5, "hd_voice_network_prefer"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isHDVoicePrefered()Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HD Voice preferred = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/incallui/InCallUtils;->getVolteResourceId(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/incallui/InCallUtils;->getVolteResourceId(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mOrientation:I

    iget v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v4, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragment;->updateMultiSimEndCallButtonDrawable()V

    :cond_5
    return-void

    :cond_6
    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/incallui/InCallUtils;->getVolteResourceId(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/incallui/InCallUtils;->getVolteResourceId(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_8

    const v5, 0x7f0900d4

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_8
    const v5, 0x7f0900d3

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/incallui/EndCallButtonFragment;->updateVoiceCallButton(Landroid/widget/Button;Z)V

    goto :goto_1
.end method

.method public updateMultiSimEndCallButton(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0e00f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const v0, 0x7f0e00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragment;->updateMultiSimEndCallButtonDrawable()V

    :cond_0
    return-void
.end method

.method public updateMultiSimEndCallButtonDrawable()V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkMultiSim()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getOnehandEndCallSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->getOnehandEndCallSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string v2, "video_call_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getEndCallSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->getEndCallSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v2, "ip_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const-string v2, "video_call_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    const-string v2, "ip_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonFragment;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateOneHandMode()V
    .locals 0

    return-void
.end method

.method public updateVoiceCallButton(Landroid/widget/Button;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
