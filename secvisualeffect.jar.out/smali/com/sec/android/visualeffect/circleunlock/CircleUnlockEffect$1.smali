.class Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;
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

    iput-object p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMin:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$100(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v2

    const/high16 v0, 0x3f800000

    iget-object v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMin:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$100(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    # setter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$002(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)F

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$200(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v2

    # invokes: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$300(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;
    invoke-static {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$400(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->strokeAnimationUpdate(F)V

    return-void
.end method
