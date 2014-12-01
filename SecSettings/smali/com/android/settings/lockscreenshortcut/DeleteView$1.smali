.class Lcom/android/settings/lockscreenshortcut/DeleteView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    # setter for: Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->access$002(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    # setter for: Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->access$202(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    # invokes: Lcom/android/settings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->access$100(Lcom/android/settings/lockscreenshortcut/DeleteView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->access$002(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z

    return-void
.end method
