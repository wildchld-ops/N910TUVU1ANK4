.class Lcom/android/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    return-void
.end method

.method public onICCCardStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_0
    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onKnoxSwitching()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onKnoxSwitching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->access$902(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1    # Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardViewMediator$1;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2    # I

    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator$11;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSimStateChanged getPINPUKRequest()==false: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :pswitch_2
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_5
    :try_start_5
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :pswitch_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_6
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_4
    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onUserInfoChanged(I)V
    .locals 1
    .param p1    # I

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$800()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onUserInfoChanged(I)V

    :cond_0
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$800()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onUserRemoved(I)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onUserSwitchComplete setting rollup to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$402(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->checkUnlockEffectVarification()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$500(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onUserSwitched(I)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
