.class public Lcom/android/incallui/EndCallButtonCoverFragment;
.super Lcom/android/incallui/EndCallButtonFragment;
.source "EndCallButtonCoverFragment.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field private mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonFragment;-><init>()V

    return-void
.end method

.method private updateInCallView()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonCoverFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->onFinishInflate(Landroid/view/View;)V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->pokeUserActivityForCover(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/EndCallButtonFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonCoverFragment;->updateInCallView()V

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x1

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

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LEFT_HANDLE: redial!"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0e00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonCoverFragment;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    :cond_0
    return-void
.end method
