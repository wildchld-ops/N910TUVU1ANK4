.class Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewCircle.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createArrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$900(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
