.class Lcom/android/launcher2/AppInfoDrawable$2;
.super Ljava/lang/Object;
.source "AppInfoDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppInfoDrawable;->startTranslateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppInfoDrawable;

.field final synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppInfoDrawable;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppInfoDrawable$2;->this$0:Lcom/android/launcher2/AppInfoDrawable;

    iput-object p2, p0, Lcom/android/launcher2/AppInfoDrawable$2;->val$set:Landroid/animation/AnimatorSet;

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

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable$2;->this$0:Lcom/android/launcher2/AppInfoDrawable;

    # setter for: Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/AppInfoDrawable;->access$002(Lcom/android/launcher2/AppInfoDrawable;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable$2;->this$0:Lcom/android/launcher2/AppInfoDrawable;

    iget-object v1, p0, Lcom/android/launcher2/AppInfoDrawable$2;->val$set:Landroid/animation/AnimatorSet;

    # setter for: Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/launcher2/AppInfoDrawable;->access$102(Lcom/android/launcher2/AppInfoDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable$2;->this$0:Lcom/android/launcher2/AppInfoDrawable;

    # setter for: Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/AppInfoDrawable;->access$202(Lcom/android/launcher2/AppInfoDrawable;Z)Z

    return-void
.end method
