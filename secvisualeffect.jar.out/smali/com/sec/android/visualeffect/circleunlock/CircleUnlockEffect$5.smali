.class Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$5;
.super Ljava/lang/Object;
.source "CircleUnlockEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$1100(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->access$1102(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
