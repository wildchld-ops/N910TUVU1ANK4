.class final Lcom/android/incallui/CallAnimationUtils$Translate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallAnimationUtils$Translate;->hideBottom(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$parentView:Landroid/view/View;

    iput p3, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;

    const/4 v3, 0x0

    const v2, 0x7f0e0001

    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$parentView:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Translate: HIDE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DONE.  Set visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallAnimationUtils$Translate$2;->val$visibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/incallui/CallAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/incallui/CallAnimationUtils;->access$000(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
