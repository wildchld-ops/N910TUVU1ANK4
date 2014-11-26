.class Lcom/android/keyguard/SlidingChallengeLayout$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/SlidingChallengeLayout;->showHealthView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$11;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1    # Landroid/animation/Animator;

    const/16 v4, 0x8

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout$11;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;
    invoke-static {v2}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1600(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout$11;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;
    invoke-static {v2}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1600(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout$11;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;
    invoke-static {v2}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1600(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    const v3, 0x7f0b00e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$11;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mHealthView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1500(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
