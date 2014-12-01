.class public Lcom/android/incallui/service/IncomingTipsPopupService;
.super Lcom/android/incallui/service/MiniModeCallService;
.source "IncomingTipsPopupService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# instance fields
.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field mCancelButton:Landroid/widget/ImageButton;

.field mTipsPopup:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    new-instance v0, Lcom/android/incallui/service/IncomingTipsPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/IncomingTipsPopupService$1;-><init>(Lcom/android/incallui/service/IncomingTipsPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/IncomingTipsPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
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

    const-string v1, "IncomingTipsPopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004f

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/service/IncomingTipsPopupService;->mTipsPopup:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingTipsPopupService;->mTipsPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/service/IncomingTipsPopupService;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingTipsPopupService;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingTipsPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    return-void
.end method

.method protected onCustomCreate()V
    .locals 3

    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-super {p0, v2}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_tips_popup_consumed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const-string v1, "IncomingTipsPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method
