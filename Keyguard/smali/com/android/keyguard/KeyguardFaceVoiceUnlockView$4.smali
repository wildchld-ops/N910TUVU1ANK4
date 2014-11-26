.class Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1    # Z

    const-string v2, "FULKeyguardFaceUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # setter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1202(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;Z)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1300(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1    # I

    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1000(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1000(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1    # I

    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1    # I

    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    return-void
.end method
