.class public Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewCircle.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isAffordanceLoop:Z

.field private isAnimationOn:Z

.field private isIgnoreTouch:Z

.field private isPlayAffordance:Z

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const/16 v7, 0x258

    const/16 v6, 0x12c

    const/16 v5, 0x10b

    const/16 v4, 0x320

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "CircleLockScreen"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_MAX_ALPHA:I

    const-wide v1, 0x3fe99999a0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v1, 0x3ff4ccccc0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->UNLOCK_DRAG_THRESHOLD:D

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARROW_FADE_IN_DURATION:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARROW_FADE_OUT_DURATION:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARR0W_FADE_IN_OFFSET:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARR0W_FADE_OUT_OFFSET:I

    const/16 v1, 0x52

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->INIT_ANGLE_CIRCLE_1:I

    const/16 v1, 0x139

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->INIT_ANGLE_CIRCLE_2:I

    const/16 v1, 0x41

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->INIT_ANGLE_CIRCLE_3:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_CENTER_DOWN_DURATION:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_CENTER_UP_DURATION:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_FIRST_DURATION:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_FIRST_STARTOFF:I

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_SECOND_DURATION:I

    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_SECOND_STARTOFF:I

    const/16 v1, 0x514

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_LOOP_DURATION:I

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_OUT_DURATION:I

    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->FIRST_MOVE_DURATION:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->LOOP_HANDLER_WHAT:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setLayout()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setHandler()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private clearAllViews()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private createArrowAnimation()V
    .locals 7

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private createCircleAnimation()V
    .locals 13

    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_5
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private createCircleCenterAnimation()V
    .locals 6

    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .locals 4
    .param p1    # D

    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget v2, v1, v0

    return v2

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f020169
        0x7f02016a
        0x7f02016b
        0x7f02016c
        0x7f02016d
        0x7f02016e
        0x7f02016f
        0x7f020170
        0x7f020171
        0x7f020172
        0x7f020173
        0x7f020174
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
        0x7f02017a
        0x7f02017b
        0x7f02017c
        0x7f02017d
        0x7f02017e
        0x7f02017f
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
    .end array-data
.end method

.method private playUnlockAffordance()V
    .locals 6

    const/16 v2, 0xff

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "-------------------------------- affordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v2, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V

    return-void
.end method

.method private setAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createCircleCenterAnimation()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createCircleAnimation()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createArrowAnimation()V

    return-void
.end method

.method private setHandler()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mHandlerForRepeat:Landroid/os/Handler;

    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # D

    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    :cond_0
    rsub-int v0, v0, 0xff

    goto :goto_0
.end method

.method private setLayout()V
    .locals 1

    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private startCircleAnimation()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopUnlockAffordance()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    return-void
.end method

.method public clearCircleAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 39
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    :cond_0
    const/16 v31, 0x0

    :goto_0
    return v31

    :cond_1
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v31, v0

    if-eqz v31, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v31

    sub-float v27, v27, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v31

    sub-float v28, v28, v31

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "touchedEventX = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getHeight()I

    move-result v31

    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    if-nez v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    packed-switch v31, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    const/16 v31, 0x1

    goto/16 :goto_0

    :pswitch_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "handleTouchEvent : view = default circleunlock"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    sub-int v31, v31, v32

    sub-int v21, v31, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    sub-int v31, v31, v32

    sub-int v8, v31, v30

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v30

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v16

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "handleTouchEvent : view = Image Button"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "handleTouchEvent : view = Shortcut"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    move/from16 v31, v0

    sub-float v31, v31, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move/from16 v31, v0

    sub-float v31, v31, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    goto/16 :goto_2

    :pswitch_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v17, v31, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v18, v31, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v27, v31

    move/from16 v0, v31

    float-to-int v10, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v28, v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v32

    mul-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getHeight()I

    move-result v32

    div-int v11, v31, v32

    :goto_3
    int-to-double v0, v10

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x4000000000000000L

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    int-to-double v0, v11

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4000000000000000L

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    add-double v14, v31, v33

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getHeight()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v19

    :goto_4
    div-int/lit8 v31, v19, 0x2

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v31, v12, v25

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setInnerCircle(Landroid/view/View;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3fc999999999999aL

    cmpg-double v31, v31, v33

    if-gez v31, :cond_c

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4ccccc0000000L

    cmpl-double v31, v31, v33

    if-ltz v31, :cond_6

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    move/from16 v31, v0

    sub-float v31, v27, v31

    move/from16 v0, v31

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    move/from16 v31, v0

    sub-float v31, v28, v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v32

    mul-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getHeight()I

    move-result v32

    div-int v11, v31, v32

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getHeight()I

    move-result v19

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3fc999999999999aL

    cmpl-double v31, v31, v33

    if-lez v31, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4ccccc0000000L

    cmpg-double v31, v31, v33

    if-gez v31, :cond_11

    int-to-double v4, v10

    mul-int/lit8 v31, v11, -0x1

    move/from16 v0, v31

    int-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->radian:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->radian:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x400921fb54442d18L

    div-double v31, v31, v33

    const-wide v33, 0x4066800000000000L

    mul-double v31, v31, v33

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x42b40000

    add-float v9, v31, v32

    const/high16 v31, 0x42a40000

    sub-float v22, v9, v31

    const v31, 0x439c8000

    sub-float v23, v9, v31

    const/high16 v31, 0x42820000

    sub-float v24, v9, v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    const/16 v31, 0x0

    cmpg-float v31, v22, v31

    if-gez v31, :cond_d

    const/high16 v31, 0x43b40000

    add-float v22, v22, v31

    :cond_d
    const/16 v31, 0x0

    cmpg-float v31, v23, v31

    if-gez v31, :cond_e

    const/high16 v31, 0x43b40000

    add-float v23, v23, v31

    :cond_e
    const/16 v31, 0x0

    cmpg-float v31, v24, v31

    if-gez v31, :cond_f

    const/high16 v31, 0x43b40000

    add-float v24, v24, v31

    :cond_f
    new-instance v31, Landroid/animation/AnimatorSet;

    invoke-direct/range {v31 .. v31}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v35, "alpha"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0x3e99999a

    aput v38, v36, v37

    invoke-static/range {v34 .. v36}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v35, "rotation"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput v22, v36, v37

    invoke-static/range {v34 .. v36}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v35, "alpha"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/high16 v38, 0x3f000000

    aput v38, v36, v37

    invoke-static/range {v34 .. v36}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v35, "rotation"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput v23, v36, v37

    invoke-static/range {v34 .. v36}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v35, "alpha"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0x3f333333

    aput v38, v36, v37

    invoke-static/range {v34 .. v36}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v35, "rotation"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput v24, v36, v37

    invoke-static/range {v34 .. v36}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x258

    invoke-virtual/range {v31 .. v33}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    new-instance v32, Landroid/view/animation/interpolator/CubicEaseInOut;

    invoke-direct/range {v32 .. v32}, Landroid/view/animation/interpolator/CubicEaseInOut;-><init>()V

    invoke-virtual/range {v31 .. v32}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/animation/AnimatorSet;->start()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v31

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4ccccc0000000L

    cmpl-double v31, v31, v33

    if-ltz v31, :cond_9

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const v32, 0xff00

    and-int v31, v31, v32

    shr-int/lit8 v20, v31, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    if-nez v31, :cond_12

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    :cond_12
    :pswitch_4
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/animation/AnimatorSet;->start()V

    const-wide v31, 0x3fe99999a0000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v33, v0

    cmpg-double v31, v31, v33

    if-gtz v31, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4ccccc0000000L

    cmpg-double v31, v31, v33

    if-ltz v31, :cond_6

    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v31, v0

    const-wide v33, 0x3fe99999a0000000L

    cmpg-double v31, v31, v33

    if-gez v31, :cond_6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->getUnlockscreenLockImageIdAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;D)V

    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # D

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
