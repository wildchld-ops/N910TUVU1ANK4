.class Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;
.super Ljava/lang/Object;
.source "TwHelpAnimatedDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    # operator++ for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->access$008(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->access$000(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->access$100(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->access$200(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->access$100(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->access$000(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
