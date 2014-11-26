.class Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;
.super Landroid/content/BroadcastReceiver;
.source "SecKeyguardFlightModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardFlightModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$000(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$100(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$200(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->startFlightAnimation(Landroid/view/animation/ScaleAnimation;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$300(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;Landroid/view/animation/ScaleAnimation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$100(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
