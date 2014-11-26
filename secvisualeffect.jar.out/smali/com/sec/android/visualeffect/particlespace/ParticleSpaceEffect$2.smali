.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;
    invoke-static {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$300(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget v2, v2, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceX:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget v3, v3, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceY:F

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget v4, v4, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->addDots(IFFI)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$402(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
