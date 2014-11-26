.class Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;
.super Landroid/os/Handler;
.source "KeyguardEffectViewCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setHandler()V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------- mHandler, isAffordanceLoop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$600(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$800(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    goto :goto_0
.end method
