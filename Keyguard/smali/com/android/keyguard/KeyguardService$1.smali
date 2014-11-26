.class Lcom/android/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeLidState(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->changeLidState(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->dismiss()V

    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->dispatch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return-void
.end method

.method public isDismissable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isDismissable()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isKeyguardHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isKeyguardHidden()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    return-void
.end method

.method public launchCamera()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->launchCamera()V

    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onBootCompleted()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1    # Lcom/android/internal/policy/IKeyguardShowCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onSystemReady()V

    return-void
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->removeAdaptiveEvent(Ljava/lang/String;)V

    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->removeContextualEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewMediator;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setBendedPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setHidden(Z)V

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    return-void
.end method

.method public showAssistant()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->showAssistant()V

    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewMediator;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1
    .param p1    # Lcom/android/internal/policy/IKeyguardExitCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    return-void
.end method
