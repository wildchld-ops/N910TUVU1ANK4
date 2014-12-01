.class public Lcom/android/incallui/InCallButtonCoverFragment;
.super Lcom/android/incallui/CallButtonFragment;
.source "InCallButtonCoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field coverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private mCoverMuteToggleButton:Landroid/widget/ToggleButton;

.field private mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

.field private mCoverToastText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mPopupView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/InCallButtonCoverFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallButtonCoverFragment$1;-><init>(Lcom/android/incallui/InCallButtonCoverFragment;)V

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallButtonCoverFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallButtonCoverFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->dismissPopupWindow()V

    return-void
.end method

.method private dismissPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private initPopupWindow()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method private showPopupWindow()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->initPopupWindow()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupView:Landroid/view/View;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, -0x96

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateInCallView()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMute(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->enableMute(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f0902f8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->showPopupWindow()V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->showPopupWindow()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0117
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonCoverFragment;->onFinishInflate(Landroid/view/View;)V

    const v1, 0x7f04001d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mPopupView:Landroid/view/View;

    const v2, 0x7f0e0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->initPopupWindow()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onDestroyView()V

    const-string v0, "onDestroyView "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->dismissPopupWindow()V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onFinishInflate(Landroid/view/View;)V

    const v0, 0x7f0e011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonCoverFragment;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    const v0, 0x7f0e0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    const v0, 0x7f0e011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f0e0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    const v0, 0x7f0e0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0
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

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    packed-switch v1, :pswitch_data_0

    move v3, v2

    :goto_0
    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    sget v4, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    sget v4, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e0117
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->updateInCallView()V

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
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->updateInCallView()V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setMute(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public showRecordToast()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    const-string v4, "com.sec.android.app.voicenote"

    const v3, 0x7f0902f8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const v3, 0x7f090136

    const-string v5, "com.sec.android.app.voicenote"

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v3, 0x7f090135

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverToastText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonCoverFragment;->showPopupWindow()V

    return-void
.end method

.method updateSpeakerState(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
