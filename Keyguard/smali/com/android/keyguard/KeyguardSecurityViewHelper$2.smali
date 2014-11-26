.class final Lcom/android/keyguard/KeyguardSecurityViewHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ecaView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;->val$ecaView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    const/4 v0, 0x1

    # setter for: Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->access$002(Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;->val$ecaView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;->val$ecaView:Landroid/view/View;

    # getter for: Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
