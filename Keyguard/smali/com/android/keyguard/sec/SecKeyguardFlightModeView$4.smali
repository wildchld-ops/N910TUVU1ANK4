.class Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;
.super Ljava/lang/Object;
.source "SecKeyguardFlightModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->startFlightAnimation(Landroid/view/animation/ScaleAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

.field final synthetic val$Anim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;->val$Anim:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$100(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;->val$Anim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
