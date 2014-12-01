.class public Lcom/android/incallui/service/DisplayBitratePopupService;
.super Lcom/android/incallui/service/MiniModeCallService;
.source "DisplayBitratePopupService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# instance fields
.field private _timer:Landroid/os/CountDownTimer;

.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field mCancelButton:Landroid/widget/ImageButton;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field mdisplaybitratePopup:Landroid/widget/RelativeLayout;

.field mdisplaybitrateText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    new-instance v0, Lcom/android/incallui/service/DisplayBitratePopupService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/DisplayBitratePopupService$2;-><init>(Lcom/android/incallui/service/DisplayBitratePopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/DisplayBitratePopupService;)Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/service/DisplayBitratePopupService;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/incallui/service/DisplayBitratePopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-object v0
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v1, "DisplayBitratePopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitratePopup:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitratePopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitratePopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    new-instance v0, Lcom/android/incallui/service/DisplayBitratePopupService$1;

    const-wide/32 v2, 0xf4240

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/service/DisplayBitratePopupService$1;-><init>(Lcom/android/incallui/service/DisplayBitratePopupService;JJ)V

    iput-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->_timer:Landroid/os/CountDownTimer;

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    return-void
.end method

.method protected onCustomCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->_timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mCancelButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mCancelButton:Landroid/widget/ImageButton;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitratePopup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitratePopup:Landroid/widget/RelativeLayout;

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3

    const-string v0, "DisplayBitratePopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/DisplayBitratePopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService;->_timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method
