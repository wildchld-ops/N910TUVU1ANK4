.class Lcom/android/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doKeyguardLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public isLidOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isLidOpened()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V

    return-void
.end method

.method public keyguardDone(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public keyguardDonePending()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    return-void
.end method

.method public keyguardGone()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    return-void
.end method

.method public resetStateLocked(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity(J)V

    return-void
.end method
