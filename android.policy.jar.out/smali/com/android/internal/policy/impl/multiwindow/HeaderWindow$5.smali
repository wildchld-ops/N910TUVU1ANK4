.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;
.super Ljava/lang/Object;
.source "HeaderWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

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
