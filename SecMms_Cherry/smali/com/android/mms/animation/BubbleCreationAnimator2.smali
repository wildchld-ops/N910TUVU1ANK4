.class public Lcom/android/mms/animation/BubbleCreationAnimator2;
.super Ljava/lang/Object;
.source "BubbleCreationAnimator2.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/BubbleCreationAnimator2"


# instance fields
.field private mDuration:I

.field private mHasScheduled:Z

.field mItem:Lcom/android/mms/ui/MessageListItem;

.field private mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/android/mms/ui/MessageListItem;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    iput-object p1, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mList:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mDuration:I

    iput-boolean p4, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mHasScheduled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, -0x2

    const-string v0, "Mms/BubbleCreationAnimator2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measured2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getAnimationTarget()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getAnimationTarget()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getAnimationTarget()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getAnimationTarget()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getAnimationTarget()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/view/View;->measure(II)V

    const-string v6, "Mms/BubbleCreationAnimator2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "measured1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mList:Landroid/widget/ListView;

    iget-boolean v8, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mHasScheduled:Z

    invoke-static {v5, v9, v6, v7, v8}, Lcom/android/mms/animation/LayoutParamAnimator;->ofHeight(Landroid/view/View;IILandroid/widget/ListView;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v9, v6}, Lcom/android/mms/animation/LayoutParamAnimator;->ofWidth(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v6, "alpha"

    new-array v7, v11, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v6, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v6}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v6, p0, Lcom/android/mms/animation/BubbleCreationAnimator2;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
