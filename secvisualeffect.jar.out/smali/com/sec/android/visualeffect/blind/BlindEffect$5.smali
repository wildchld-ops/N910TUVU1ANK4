.class Lcom/sec/android/visualeffect/blind/BlindEffect$5;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/blind/BlindEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$5;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$5;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # invokes: Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockFinished()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$1200(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

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
