.class Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1102(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # invokes: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedHoverLight()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    return-void
.end method
