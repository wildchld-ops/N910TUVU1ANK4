.class public Lcom/android/incallui/AnswerCoverFragment;
.super Lcom/android/incallui/AnswerFragment;
.source "AnswerCoverFragment.java"

# interfaces
.implements Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field private mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

.field private mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerCoverFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/AnswerCoverFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerCoverFragment;->setDrawerDescription(Z)V

    return-void
.end method

.method private setDrawerDescription(Z)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0900cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateIncomingCallView()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectCallWithMessageContent;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerCoverFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    :cond_2
    invoke-super {p0}, Lcom/android/incallui/AnswerFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0e001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v0, 0x7f0e028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RejectCallWithMessageContent;

    iput-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectCallWithMessageContent;->setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectCallWithMessageContent;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;)V

    :cond_1
    const v0, 0x7f0e028c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const v0, 0x7f0e000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/incallui/AnswerCoverFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/AnswerCoverFragment$1;-><init>(Lcom/android/incallui/AnswerCoverFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/incallui/AnswerCoverFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/AnswerCoverFragment$2;-><init>(Lcom/android/incallui/AnswerCoverFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    :cond_2
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

.method public onTrigger(Landroid/view/View;I)V
    .locals 8

    const v7, 0x7f0202fe

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDialTrigger(whichHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v3, "LEFT_HANDLE: answer!"

    invoke-virtual {p0, v3, v6}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_3

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

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/AnswerCoverFragment;->showAnswerUi(Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallButtonPresenter;->setButtonsVisibility(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v3, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMenu(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallCardPresenter;->showCallerInfoCard(Z)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/CallCommandClient;->answerMessage(IZ)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v3, v2, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "RIGHT_HANDLE: reject!"

    invoke-virtual {p0, v3, v6}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/AnswerCoverFragment;->showAnswerUi(Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v3, v2, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    const-string v0, "rejectWithAnswerMemo "

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

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

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->answeringMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    :cond_1
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/AnswerFragment;->showAnswerUi(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAnswerUi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    invoke-direct {p0}, Lcom/android/incallui/AnswerCoverFragment;->updateIncomingCallView()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAnswerUi - reset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

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

.method public startAirMotionAnimation(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->startAirMotionAnimation(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    return-void
.end method
