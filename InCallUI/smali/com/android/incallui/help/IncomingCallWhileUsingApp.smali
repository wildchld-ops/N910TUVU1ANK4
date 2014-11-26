.class public Lcom/android/incallui/help/IncomingCallWhileUsingApp;
.super Landroid/app/Activity;
.source "IncomingCallWhileUsingApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/IncomingCallWhileUsingApp$9;,
        Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private callTimerCount:I

.field private mAddButton:Landroid/widget/Button;

.field private mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallCard:Landroid/widget/RelativeLayout;

.field private mCallState:Landroid/widget/TextView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDragModeButtonLayout:Landroid/widget/LinearLayout;

.field private mDrageModeBtn:Landroid/widget/ImageButton;

.field private mEndButton:Landroid/widget/Button;

.field private mExtraVolBtn:Landroid/widget/ToggleButton;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFullScreenBtn:Landroid/widget/ImageButton;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mIncallButtonLayout:Landroid/widget/LinearLayout;

.field private mIncomingButtonLayout:Landroid/widget/LinearLayout;

.field private mIncomingCallPopup:Landroid/widget/RelativeLayout;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNumberIconLabel:Landroid/widget/ImageView;

.field private mOnScreenMenuBtn:Landroid/view/View;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPopupCallerName:Landroid/widget/TextView;

.field private mPopupCallerNumberOrLocation:Landroid/widget/TextView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordButton:Landroid/widget/Button;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTextAniImage:Landroid/widget/ImageView;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/RelativeLayout;

.field private mTutorialPopupCallAnswer:Landroid/widget/Button;

.field private mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

.field private mTutorialPopupCallEndcall:Landroid/widget/Button;

.field private mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

.field private mTutorialPopupCallReject:Landroid/widget/Button;

.field private mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

.field private mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

.field private mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

.field private mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

.field private textAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$8;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 1
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const v3, 0x7f050003

    const v0, 0x7f05000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    const/16 v3, 0xa

    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private duringCallFullScreen()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f0e01ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0e01e4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f0e01fd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPeriodMark:Landroid/widget/ImageView;

    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f0e0201

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mNumberIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f0e0203

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0e0112

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "show_extra_volume_in_call_card"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0105

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mExtraVolBtn:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const v0, 0x7f0e0209

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallTypeLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mNumberIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mNumberIconLabel:Landroid/widget/ImageView;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mNumberIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02047a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/Button;

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->updateBgColorForCallState()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private duringCallMiniModeScreen()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDrageModeBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDrageModeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDrageModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDrageModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcall:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initIncomingCallPopup()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0e0197

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0e017c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const v0, 0x7f0e0184

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFullScreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V
    .locals 7
    .param p1    # Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    const/16 v6, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v1, "IncomingCallWhileUsingApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallTutorialMode() state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHelpTabView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp$9;->$SwitchMap$com$android$incallui$help$IncomingCallWhileUsingApp$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    const-string v2, "00:01"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iput v5, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v1, 0x7f0e0176

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0900f2

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startTextAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTextAniImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTextAniImage:Landroid/widget/ImageView;

    const v1, 0x7f020434

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method private updateBgColorForCallState()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e002b -> :sswitch_2
        0x7f0e0190 -> :sswitch_0
        0x7f0e0192 -> :sswitch_1
        0x7f0e01d9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04004e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0e0176

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTextAniImage:Landroid/widget/ImageView;

    const v1, 0x7f0e0199

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    const v1, 0x7f0e019f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e019d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    :goto_0
    const v1, 0x7f0e019a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f0e01a0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0e019e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    :goto_1
    const v1, 0x7f0e0013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0190

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/widget/Button;

    const v1, 0x7f0e0192

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->initIncomingCallPopup()V

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->duringCallMiniModeScreen()V

    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->animationInit(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->startTextAnimation()V

    sget-object v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    const v1, 0x7f0e0196

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcall:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcall:Landroid/widget/Button;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/widget/Button;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/widget/Button;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    const v1, 0x7f0e0310

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0e0011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->duringCallFullScreen()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    return-void
.end method
