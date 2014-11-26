.class Lcom/android/keyguard/sec/MassTensionUnlockView$2;
.super Ljava/lang/Object;
.source "MassTensionUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1    # Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    # getter for: Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setX(F)V

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    # getter for: Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setY(F)V

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    # getter for: Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    # invokes: Lcom/android/keyguard/sec/MassTensionUnlockView;->createBouncerAnimation()Landroid/view/animation/AnimationSet;
    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$100(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    # getter for: Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
