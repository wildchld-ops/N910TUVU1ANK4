.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlock()V
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

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "unlock : onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlockFinished()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$500(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
