.class Lcom/android/keyguard/sec/MassTensionUnlockView$1;
.super Ljava/lang/Object;
.source "MassTensionUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/MassTensionUnlockView;->createBouncerAnimation()Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$1;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$1;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    # getter for: Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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
