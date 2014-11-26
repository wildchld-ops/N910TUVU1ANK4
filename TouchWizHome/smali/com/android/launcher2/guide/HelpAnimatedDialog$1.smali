.class Lcom/android/launcher2/guide/HelpAnimatedDialog$1;
.super Ljava/lang/Object;
.source "HelpAnimatedDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/guide/HelpAnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/HelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog$1;->this$0:Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    # getter for: Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->access$100()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog$1;->this$0:Lcom/android/launcher2/guide/HelpAnimatedDialog;

    # getter for: Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->access$000(Lcom/android/launcher2/guide/HelpAnimatedDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

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
