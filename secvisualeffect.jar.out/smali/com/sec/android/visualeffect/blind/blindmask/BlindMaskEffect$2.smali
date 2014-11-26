.class Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;
.super Ljava/lang/Object;
.source "BlindMaskEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;
    invoke-static {v1}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->access$200(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;
    invoke-static {v1}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->access$200(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->unlockLastBlind:Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;
    invoke-static {v2}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->access$200(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->getBlindWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$2;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->isRight:Z
    invoke-static {v3}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->access$100(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->setWidth(IZ)V

    :cond_0
    return-void
.end method
