.class Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;
.super Ljava/lang/Object;
.source "CircleUnlockEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const v5, 0x3ecccccd

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMax:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$500(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v3

    mul-float/2addr v3, v1

    # setter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v2, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$002(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)F

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$700(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v3

    mul-float/2addr v3, v1

    # setter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v2, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$602(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)F

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;
    invoke-static {v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$400(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->strokeAnimationUpdate(F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;
    invoke-static {v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$400(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$600(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$600(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v3

    # invokes: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V
    invoke-static {v2, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$800(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$200(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v4}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v4

    # invokes: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$300(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;Landroid/view/View;F)V

    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$900(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v2

    sub-float v3, v1, v5

    mul-float/2addr v2, v3

    const v3, 0x3f19999a

    div-float v0, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$1000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
