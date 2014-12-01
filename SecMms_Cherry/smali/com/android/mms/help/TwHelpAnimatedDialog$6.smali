.class Lcom/android/mms/help/TwHelpAnimatedDialog$6;
.super Ljava/lang/Object;
.source "TwHelpAnimatedDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/TwHelpAnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # operator++ for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$108(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$100(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;
    invoke-static {v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$500(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$800(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$500(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v2}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$100(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$102(Lcom/android/mms/help/TwHelpAnimatedDialog;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
