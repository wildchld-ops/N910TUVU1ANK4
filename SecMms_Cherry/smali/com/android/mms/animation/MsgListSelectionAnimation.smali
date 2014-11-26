.class public Lcom/android/mms/animation/MsgListSelectionAnimation;
.super Ljava/lang/Object;
.source "MsgListSelectionAnimation.java"


# instance fields
.field private CHECKBOX_FLOATING_DEFAULT_DURATION:I

.field private TAG:Ljava/lang/String;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mContext:Landroid/content/Context;

.field private mDummyTouchListener:Landroid/view/View$OnTouchListener;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShowMode:Z

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Mms/MsgListSelectionAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgListSelectionAnimation$1;-><init>(Lcom/android/mms/animation/MsgListSelectionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mDummyTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgListSelectionAnimation$2;-><init>(Lcom/android/mms/animation/MsgListSelectionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation$4;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgListSelectionAnimation$4;-><init>(Lcom/android/mms/animation/MsgListSelectionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mContext:Landroid/content/Context;

    const v1, 0x10c0034

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/animation/MsgListSelectionAnimation;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/animation/MsgListSelectionAnimation;)I
    .locals 1
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;

    invoke-direct {p0}, Lcom/android/mms/animation/MsgListSelectionAnimation;->getChbTransX()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z
    .locals 1
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-boolean v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;IIF)V
    .locals 0
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # F

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareCheckBoxAnimate(Landroid/view/View;IIF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V
    .locals 0
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideInAnimate(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V
    .locals 0
    .param p0    # Lcom/android/mms/animation/MsgListSelectionAnimation;
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideOutAnimate(Landroid/view/View;II)V

    return-void
.end method

.method private getChbTransX()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    :cond_0
    return v2
.end method

.method private prepareCheckBoxAnimate(Landroid/view/View;IIF)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # F

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private prepareContainerSlideInAnimate(Landroid/view/View;II)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private prepareContainerSlideOutAnimate(Landroid/view/View;II)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/MsgListSelectionAnimation$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListSelectionAnimation$3;-><init>(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V
    .locals 5
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;
    .param p2    # Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z

    if-nez v3, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    iput-boolean p2, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z

    iput-object p1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v4, p0, Lcom/android/mms/animation/MsgListSelectionAnimation;->mDummyTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
