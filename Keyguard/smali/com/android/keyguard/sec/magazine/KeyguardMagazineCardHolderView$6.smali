.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

.field final synthetic val$currentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iput-object p2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFinishAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->val$currentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->val$currentView:Landroid/view/View;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$702(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$502(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->onFinishAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->onFinishAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method
