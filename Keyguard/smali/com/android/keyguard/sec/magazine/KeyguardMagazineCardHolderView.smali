.class public Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMagazineCardHolderView.java"


# instance fields
.field private final CARD_FADING_ANIM_DURATION:I

.field private final CARD_FADING_ANIM_START_DELAY:I

.field private final CARD_RESIZE_ANIM_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private mCardFadingAnimator:Landroid/animation/ValueAnimator;

.field private mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

.field private mCardResizeAnimator:Landroid/animation/ValueAnimator;

.field private mExpandedCard:Landroid/view/View;

.field private mIsAnimating:Z

.field private mIsCardSelected:Z

.field private mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

.field private mNormalCard:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "KeyguardMagazineCardHolderView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_RESIZE_ANIM_DURATION:I

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_DURATION:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_START_DELAY:I

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "KeyguardMagazineCardHolderView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_RESIZE_ANIM_DURATION:I

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_DURATION:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_START_DELAY:I

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "KeyguardMagazineCardHolderView(context, attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "KeyguardMagazineCardHolderView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_RESIZE_ANIM_DURATION:I

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_DURATION:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_START_DELAY:I

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "KeyguardMagazineCardHolderView(context, attrs, defStyle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->setCardScale(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    return p1
.end method

.method private createChildren(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 5
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-nez p1, :cond_1

    const-string v3, "KeyguardMagazineCardHolderView"

    const-string v4, "Card is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v0, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private expandAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->stopAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardResizeAnim(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private setCardScale(Z)V
    .locals 3
    .param p1    # Z

    const-string v1, "KeyguardMagazineCardHolderView"

    const-string v2, "setCardScale"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x3f666666

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_1
    const v0, 0x3f70a3d7

    goto :goto_0
.end method

.method private startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private startCardResizeAnim(Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v4, "resizeY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    int-to-float v6, v1

    aput v6, v5, v7

    int-to-float v6, v3

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    const/high16 v4, 0x3f800000

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut90;

    invoke-direct {v4}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/magazinecard/MagazineCardRecord;Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
    .locals 1
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .param p2    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iput-object p2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->createChildren(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method public collapseCard()V
    .locals 4

    const/high16 v3, 0x3f800000

    const-string v0, "KeyguardMagazineCardHolderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapseCard : RID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v2, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->stopAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public expandCard()V
    .locals 4

    const-string v1, "KeyguardMagazineCardHolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expandCard : RID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->restoreDefaultCardState()V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->expandAnimation()V

    goto :goto_0
.end method

.method public getCardCategory()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v0, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "getCardCategory : record is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v0, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v0, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    goto :goto_0
.end method

.method public getCardRecordId()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-nez v0, :cond_0

    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "getRecordId : record is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v0, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    goto :goto_0
.end method

.method public isCardExpandable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCardExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCardScaleDown()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreDefaultCardState()V
    .locals 2

    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "restoreDefaultCardState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->setCardScale(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->collapseCard()V

    return-void
.end method

.method public unlockAndLaunchApplication()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v1, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    if-nez v1, :cond_2

    :cond_0
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "unlockAndLaunchApplication : record or card is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "KeyguardMagazineCardHolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockAndLaunchApplication : RID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    new-instance v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setOnKeyguardDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->showBouncer(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardHostView;->showBouncerFrameOnly(ZI)V

    iput-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    goto :goto_0
.end method
