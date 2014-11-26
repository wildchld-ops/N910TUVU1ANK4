.class Lcom/android/launcher2/FolderAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->FadeInHoverIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$from:[I

.field final synthetic val$pos:I

.field final synthetic val$pos_equal:I

.field final synthetic val$to:[I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$7;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$7;->val$from:[I

    iput-object p4, p0, Lcom/android/launcher2/FolderAnimator$7;->val$to:[I

    iput p5, p0, Lcom/android/launcher2/FolderAnimator$7;->val$pos:I

    iput p6, p0, Lcom/android/launcher2/FolderAnimator$7;->val$pos_equal:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1    # Landroid/animation/Animator;

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$7;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, v4, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$7;->val$from:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$7;->val$to:[I

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$7;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, v4, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$7;->val$from:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$7;->val$to:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/launcher2/FolderAnimator$7;->val$pos:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const v5, 0x3e99999a

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    # invokes: Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I
    invoke-static {v4, v2, v7}, Lcom/android/launcher2/FolderAnimator;->access$600(Lcom/android/launcher2/FolderAnimator;IZ)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const v5, 0x3f19999a

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/launcher2/FolderAnimator$7;->val$pos:I

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$7;->val$pos_equal:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v4}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    return-void
.end method
