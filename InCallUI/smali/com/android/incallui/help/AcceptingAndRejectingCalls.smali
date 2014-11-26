.class public Lcom/android/incallui/help/AcceptingAndRejectingCalls;
.super Landroid/app/Activity;
.source "AcceptingAndRejectingCalls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/AcceptingAndRejectingCalls$6;,
        Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private answer_passed:Z

.field private callTimerCount:I

.field private endbutton_clicked:Z

.field private mAddButton:Landroid/widget/Button;

.field private mBlueToothButton:Landroid/widget/ToggleButton;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCurrentPeriodMarkIndex:I

.field private mDialpadButton:Landroid/widget/Button;

.field private mEasyRecordButton:Landroid/widget/ToggleButton;

.field private mEndButton:Landroid/widget/Button;

.field private mExtraVolBtn:Landroid/widget/ToggleButton;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mHelpTapAccept:Landroid/widget/ImageView;

.field private mHelpTapReject:Landroid/widget/ImageView;

.field private mInCallControls:Landroid/view/View;

.field private mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mLayoutID:I

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNumberIconLabel:Landroid/widget/ImageView;

.field private mOnScreenMenuBtn:Landroid/view/View;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPeriodMarkList:[I

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectHandle:Landroid/widget/LinearLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTipAccept:Landroid/widget/FrameLayout;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTipReject:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private reject_passed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMarkList:[I

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020186
        0x7f020187
        0x7f020188
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/help/AcceptingAndRejectingCalls;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)[I
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMarkList:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$308(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const v3, 0x7f050003

    const v0, 0x7f05000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    const/16 v3, 0xa

    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

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

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

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

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initIncomingTutorial()V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f040001

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    :goto_0
    const/high16 v0, 0x4000000

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0e01e2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIndicatorArea:Landroid/view/ViewGroup;

    const v1, 0x7f0e01ee

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0e01e4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v1, 0x7f0e0043

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f0e01fd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    const v1, 0x7f0e0042

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const v1, 0x7f0e0201

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mNumberIconLabel:Landroid/widget/ImageView;

    const v1, 0x7f0e0203

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0e0112

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const-string v1, "extra_volume"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "show_extra_volume_in_call_card"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    const v1, 0x7f0e0209

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    const v1, 0x7f0e0004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    const v1, 0x7f0e000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const-string v1, "change_message_icon_for_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v2, 0x7f02036d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v1, 0x7f0e0005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0010

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0e0310

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    const v1, 0x7f0e0032

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    const v1, 0x7f0e012c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    const v1, 0x7f0e002c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mDialpadButton:Landroid/widget/Button;

    const v1, 0x7f0e0122

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mSpeakerButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mMuteButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0e0120

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBlueToothButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0e0311

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEasyRecordButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0e000e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    const v1, 0x7f0e000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0e002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateEasymodeLayout()V

    :cond_2
    return-void

    :cond_3
    const/high16 v1, 0x7f040000

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 7
    .param p1    # Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    const v6, 0x7f0a001b

    const/16 v5, 0x64

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "AcceptingAndRejectingCalls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallTutorialMode() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$6;->$SwitchMap$com$android$incallui$help$AcceptingAndRejectingCalls$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->stopPeriodAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateEasymodeLayout()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->startPeriodAnimation()V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateEasymodeLayout()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0900f2

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
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

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private updateCallCard()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->startPeriodAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mNumberIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mNumberIconLabel:Landroid/widget/ImageView;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mNumberIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02047a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private updateEasymodeLayout()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBlueToothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBlueToothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEasyRecordButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEasyRecordButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e002b
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateBgColorForCallState()V

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->animationInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateBgColorForCallState()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->stopPeriodAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startPeriodAnimation()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "startPeriodAnimation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->stopPeriodAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMarkList:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopPeriodAnimation()V
    .locals 2

    const/16 v1, 0x78

    const-string v0, "stopPeriodAnimation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I

    :cond_1
    return-void
.end method
