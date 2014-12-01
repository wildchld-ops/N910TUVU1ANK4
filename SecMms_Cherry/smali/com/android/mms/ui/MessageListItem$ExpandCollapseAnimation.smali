.class public Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandCollapseAnimation"
.end annotation


# instance fields
.field private mAnimatedView:Landroid/view/View;

.field private mEndWidth:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 3

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    iput p3, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    new-instance v0, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v0}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput p4, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mType:I

    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpandCollapseAnimation, width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    const/high16 v3, 0x3f800000

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v0, 0x41200000

    div-float v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    int-to-float v1, v1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    sub-float v1, v3, p1

    const/high16 v2, 0x40a00000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method
