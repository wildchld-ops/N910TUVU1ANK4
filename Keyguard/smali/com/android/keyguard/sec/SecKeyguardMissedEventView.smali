.class public Lcom/android/keyguard/sec/SecKeyguardMissedEventView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardMissedEventView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;
    }
.end annotation


# instance fields
.field private mAlpha0Animation:Landroid/view/animation/Animation;

.field private mAlpha80Animation:Landroid/view/animation/Animation;

.field private mCallExist:Z

.field private mCallFrame:Landroid/widget/FrameLayout;

.field private mCallRemoteViews:Landroid/widget/RemoteViews;

.field private mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

.field private mChatOnFrame:Landroid/widget/FrameLayout;

.field private mClearButton:Landroid/widget/Button;

.field private mIsClicked:Z

.field private mMsgExist:Z

.field private mMsgFrame:Landroid/widget/FrameLayout;

.field private mMsgRemoteViews:Landroid/widget/RemoteViews;

.field private mRoamingExist:Z

.field private mRoamingFrame:Landroid/widget/FrameLayout;

.field private mRoamingRemoteViews:Landroid/widget/RemoteViews;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mSelectedAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildScaleAnimation()V
    .locals 11

    const v2, 0x3f666666

    const/high16 v6, 0x3f000000

    const-wide/16 v9, 0x14d

    const/high16 v1, 0x3f800000

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method clearMissedEventView()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideBouncer()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;->refreshDefaultHelpTextView()V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isCallExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    return v0
.end method

.method public isMsgExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v1, v3

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    const v4, 0x7f0600bc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->hideBouncer()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mChatOnFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mChatOnFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mChatOnFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0b0154

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->buildScaleAnimation()V

    return-void
.end method

.method public registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    return-void
.end method

.method public removeContextualEventManagerCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    return-void
.end method

.method removeMissedEventView(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    :cond_0
    :goto_0
    const-string v0, "ContextualEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMissedEventView rq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cFlag, mFlag]=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->clearMissedEvent()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    goto :goto_0

    :cond_3
    const-string v0, "com.android.roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    goto :goto_0
.end method

.method setMissedEventView(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "ContextualEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMissedEventView() requestClass="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mOnClickHandler="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_2

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "not null"

    goto :goto_0

    :cond_3
    const-string v1, "com.android.mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    goto :goto_1

    :cond_4
    const-string v1, "com.android.roaming"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    goto :goto_1
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1    # Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_2
    return-void
.end method

.method public showBouncer(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v4

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v4

    :goto_3
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060103

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;->setHelpText(Ljava/lang/String;)V

    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_2

    :cond_7
    move v2, v5

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060102

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;->setHelpText(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_d
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method
