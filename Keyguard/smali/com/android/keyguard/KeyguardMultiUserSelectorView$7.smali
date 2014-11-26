.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;->startMoveAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field final synthetic val$expanding:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->val$expanding:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$900(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->val$expanding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$900(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
