.class public Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;
.super Landroid/widget/FrameLayout;
.source "BlindMaskEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_ANIMATION_DURATION:I

.field private blindWidth:I

.field private height:I

.field private isRight:Z

.field private mContext:Landroid/content/Context;

.field private n:I

.field private pointX:F

.field private unlockAnimationDelay:I

.field private unlockAnimator:[Landroid/animation/ValueAnimator;

.field private unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

.field private unlockLastAnimator:Landroid/animation/ValueAnimator;

.field private unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

.field private unlockWholeAnimationDuration:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFZI)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->UNLOCK_ANIMATION_DURATION:I

    const-string v0, "BlindEffect"

    const-string v1, "BlindMaskEffect : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->width:I

    iput p3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->height:I

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->pointX:F

    iput-boolean p5, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->isRight:Z

    iput p6, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockWholeAnimationDuration:I

    iget v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockWholeAnimationDuration:I

    add-int/lit16 v0, v0, -0x190

    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimationDelay:I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->initUnLock()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->isRight:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->cancelAllMaskAnimator()V

    return-void
.end method

.method private cancelAllMaskAnimator()V
    .locals 3

    const-string v1, "BlindEffect"

    const-string v2, "BlindMaskEffect : cancelAllMaskAnimator"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->cancelAnimator(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->cancelAnimator(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private fac(I)I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private initUnLock()V
    .locals 3

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    new-array v1, v1, [Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iput-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    new-array v1, v1, [Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->setunlockBlind()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->setAnimation()V

    return-void
.end method

.method private setAnimation()V
    .locals 8

    const-wide/16 v6, 0x190

    const/4 v5, 0x2

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->isRight:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseIn;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseIn;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimationDelay:I

    mul-int/2addr v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v0

    new-instance v3, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$1;-><init>(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_1
    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseIn;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseIn;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockWholeAnimationDuration:I

    add-int/lit16 v3, v3, -0x190

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;

    invoke-direct {v3, p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;-><init>(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$3;

    invoke-direct {v3, p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$3;-><init>(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private setLeftUnlockLastBlind()V
    .locals 8

    const/4 v7, -0x2

    const/4 v0, 0x0

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->pointX:F

    float-to-int v2, v3

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->width:I

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    new-instance v3, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    invoke-direct {v3, v4, v0, v5}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    invoke-virtual {p0, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->height:I

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->setHeight(I)V

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    add-int/2addr v0, v3

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->width:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    :goto_1
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    new-instance v4, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget-object v5, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    invoke-direct {v4, v5, v0, v6}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->height:I

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->setHeight(I)V

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->width:I

    sub-int/2addr v4, v2

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    invoke-direct {p0, v4}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->fac(I)I

    move-result v4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setRightUnlockBlind()V
    .locals 8

    const/4 v7, -0x2

    const/4 v0, 0x0

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->pointX:F

    float-to-int v2, v3

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->width:I

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    sub-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    invoke-direct {p0, v4}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->fac(I)I

    move-result v4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    new-instance v4, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget-object v5, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    invoke-direct {v4, v5, v0, v6}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->height:I

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->setHeight(I)V

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->width:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    new-instance v3, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    invoke-direct {v3, v4, v0, v5}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    invoke-virtual {p0, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->height:I

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->setHeight(I)V

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->blindWidth:I

    add-int/2addr v0, v3

    return-void
.end method

.method private setunlockBlind()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->isRight:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->setRightUnlockBlind()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->setLeftUnlockLastBlind()V

    goto :goto_0
.end method


# virtual methods
.method public animationStart()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public clearEffect()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BlindEffect"

    const-string v1, "BlindMaskEffect : destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->cancelAllMaskAnimator()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockBlind:[Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iput-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    iput-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockAnimator:[Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
