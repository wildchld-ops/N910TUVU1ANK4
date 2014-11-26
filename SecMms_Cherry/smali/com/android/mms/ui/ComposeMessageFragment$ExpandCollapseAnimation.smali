.class public Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandCollapseAnimation"
.end annotation


# instance fields
.field private animType:I

.field private currentMButtonLayoutHeight:I

.field private diffHeight:I

.field private mAnimatedView:Landroid/view/View;

.field private mEndHeight:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;IIII)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mType:I

    iput p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->animType:I

    if-nez p6, :cond_4

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mType:I

    if-ne v3, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->diffHeight:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mType:I

    if-ne v3, v0, :cond_1

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->diffHeight:I

    goto :goto_1
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1    # F
    .param p2    # Landroid/view/animation/Transformation;

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->animType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->diffHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->currentMButtonLayoutHeight:I

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->diffHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->animType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->toButtonLayoutHeight:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12602(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mType:I

    if-eq v2, v0, :cond_4

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mType:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mEndHeight:I

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->toButtonLayoutHeight:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12602(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method
