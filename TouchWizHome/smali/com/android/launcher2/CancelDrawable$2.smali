.class Lcom/android/launcher2/CancelDrawable$2;
.super Ljava/lang/Object;
.source "CancelDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CancelDrawable;->startTranslateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CancelDrawable;

.field final synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CancelDrawable;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CancelDrawable$2;->this$0:Lcom/android/launcher2/CancelDrawable;

    iput-object p2, p0, Lcom/android/launcher2/CancelDrawable$2;->val$set:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable$2;->this$0:Lcom/android/launcher2/CancelDrawable;

    # setter for: Lcom/android/launcher2/CancelDrawable;->mIsAnimatingTranslate:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/CancelDrawable;->access$002(Lcom/android/launcher2/CancelDrawable;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable$2;->this$0:Lcom/android/launcher2/CancelDrawable;

    iget-object v1, p0, Lcom/android/launcher2/CancelDrawable$2;->val$set:Landroid/animation/AnimatorSet;

    # setter for: Lcom/android/launcher2/CancelDrawable;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/launcher2/CancelDrawable;->access$102(Lcom/android/launcher2/CancelDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable$2;->this$0:Lcom/android/launcher2/CancelDrawable;

    # setter for: Lcom/android/launcher2/CancelDrawable;->mIsRepeat:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/CancelDrawable;->access$202(Lcom/android/launcher2/CancelDrawable;Z)Z

    return-void
.end method
