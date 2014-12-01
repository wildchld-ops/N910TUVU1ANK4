.class public Lcom/android/incallui/AnswerEasyFragment;
.super Lcom/android/incallui/AnswerImageFragment;
.source "AnswerEasyFragment.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field private mIncomingCallEasyImageWidgetBackground:Landroid/widget/RelativeLayout;

.field private mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerImageFragment;-><init>()V

    return-void
.end method

.method private checkEasyModeFirstCallEnd()Z
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    if-ne v5, v9, :cond_1

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFirstCallPhoneType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaitingCallPhoneType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v7, :cond_3

    if-ne v3, v7, :cond_3

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEasyModeFirstCallEnd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    if-eq v3, v8, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    if-eq v3, v9, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    if-ne v2, v8, :cond_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkOtherNetworkIncomingCall()Z
    .locals 7

    const/4 v4, 0x0

    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v4, "Other network incoming call"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_0
    return v4
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerEasyFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->clearDrawable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/AnswerImageFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iput-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v0, 0x7f0e001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingCallEasyImageWidgetBackground:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/AnswerEasyFragment;->showAnswerUi(Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonPresenter;->setButtonsVisibility(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/AnswerEasyFragment;->checkOtherNetworkIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallDUOSUIControl;->getInstance()Lcom/android/incallui/InCallDUOSUIControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallDUOSUIControl;->hangUpOtherThenAnswer()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/AnswerEasyFragment;->checkEasyModeFirstCallEnd()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/AnswerEasyFragment;->showAnswerUi(Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showAnswerUi(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/AnswerImageFragment;->showAnswerUi(Z)V

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerEasyFragment;->updateIncomingCallWidgetLayout()V

    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isVoiceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    iget-object v8, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingCallEasyImageWidgetBackground:Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingCallEasyImageWidgetBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v8, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingCallEasyImageWidgetBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingCallEasyImageWidgetBackground:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_8

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    const-string v8, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d005e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    :cond_6
    :goto_2
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/incallui/AnswerEasyFragment;->mIncomingEasy:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_8
    const/16 v8, 0x8

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d005d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0086

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    goto :goto_2
.end method
