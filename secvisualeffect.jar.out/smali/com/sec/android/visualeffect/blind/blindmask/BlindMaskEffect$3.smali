.class Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$3;
.super Ljava/lang/Object;
.source "BlindMaskEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$3;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect$3;->this$0:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    # invokes: Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->cancelAllMaskAnimator()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->access$300(Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method
