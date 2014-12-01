.class public Lcom/android/mms/animation/MsgBubbleListAnimation;
.super Lcom/android/mms/animation/MsgBaseListAnimation;
.source "MsgBubbleListAnimation.java"


# static fields
.field public static final ANIMATION_SLIDE_CHECKBOX_MOVING_SIZE:F = 80.0f

.field public static final ANIMATION_SLIDE_DOWN_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_MOVING_SIZE:F = 68.0f

.field public static final ANIMATION_SLIDE_UP_DOWN_SIZE:F = -112.0f

.field public static final ANIMATION_SLIDE_UP_DURATION:J = 0x64L

.field public static final ANIMATION_UP_DOWN_DURATION:J = 0x12cL


# instance fields
.field private TAG:Ljava/lang/String;

.field private mTotalListHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;-><init>()V

    const-string v0, "Mms/MsgBubbleListAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    iget-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->TAG:Ljava/lang/String;

    const-string v1, "MsgBubbleListAnimation Create"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createHideCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/AnimationSet;
    .locals 8

    const-wide/16 v6, 0x12c

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x42880000

    invoke-static {v6, v7, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    invoke-static {v6, v7, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createFadeOut(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/android/mms/animation/MsgBubbleListAnimation$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/mms/animation/MsgBubbleListAnimation$1;-><init>(Lcom/android/mms/animation/MsgBubbleListAnimation;ZLandroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v1
.end method

.method private hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;ZZI)V
    .locals 4

    invoke-direct {p0, p2, p4}, Lcom/android/mms/animation/MsgBubbleListAnimation;->createHideCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    if-eqz p3, :cond_4

    const/4 v1, 0x1

    if-ne p5, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    invoke-interface {v1}, Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;->onEndDeleteAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_5

    iget v1, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    goto :goto_1
.end method


# virtual methods
.method public hidecheckbox()V
    .locals 10

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    if-ne v0, v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation;->mTotalListHeight:I

    sub-int v0, v8, v6

    add-int/lit8 v5, v0, 0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v0, v5, -0x1

    if-ne v7, v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v0, v5, -0x2

    if-eq v7, v0, :cond_3

    if-ne v5, v9, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/animation/MsgBubbleListAnimation;->hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;ZZI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
