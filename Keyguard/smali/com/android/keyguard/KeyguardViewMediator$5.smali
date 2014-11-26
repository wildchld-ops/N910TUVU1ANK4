.class Lcom/android/keyguard/KeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "com.sec.keyguard.DELAYED_FINGER_PRINT_PASSWORD_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "seq"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received DELAYED_FINGER_PRINT_PASSWORD_ACTION (mDelayedShowingFingerPrintPasswordSequence = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/keyguard/KeyguardHostView;->mDelayedShowingFingerPrintPasswordSequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , Sequence = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Lcom/android/keyguard/KeyguardHostView;->mDelayedShowingFingerPrintPasswordSequence:I

    if-ne v7, v6, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v9, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v9}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v8

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    const-string v7, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "seq"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDelayedShowingSequence = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v9}, Lcom/android/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v7

    if-ne v7, v6, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v9, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v9}, Lcom/android/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    sget-boolean v7, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v9, 0x0

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v9}, Lcom/android/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v9, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v9}, Lcom/android/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    :cond_4
    :goto_1
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v9, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v9}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_7
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "KeyguardViewMediator"

    const-string v8, "FMM_LOCKED_ACTION intent is received."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    :goto_2
    const-string v7, "KeyguardViewMediator"

    const-string v8, "wakeUp device!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_9
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock FMM unlockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v10, v10}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    :goto_3
    const-string v7, "KeyguardViewMediator"

    const-string v8, "wakeUp device!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_b
    const-string v7, "com.sec.android.Keyguard.SIDE_TOUCH_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock SIDE_UNLOCK unlockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v10, v10}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_c
    const-string v7, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "KeyguardViewMediator"

    const-string v8, "CARRIER_LOCKED_ACTION intent is received."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    const-string v7, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock FLP!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v10, v10}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    const-string v7, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "KeyguardViewMediator"

    const-string v8, "CARRIER_FLPP_LOCKED_ACTION intent is received."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_12
    const-string v7, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "KeyguardViewMediator"

    const-string v8, "CARRIER_FLPP_UNLOCKED_ACTION intent is received."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSKTPassword(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v10, v10}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_13
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_14
    const-string v7, "com.sec.android.app.BlackScreen.BSCREENCAMERAON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->checkCallByBlackscreen()Z
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "KeyguardViewMediator"

    const-string v8, "receive Blackscreen Camera launch"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewManager;->hide()V

    goto/16 :goto_0

    :cond_15
    const-string v7, "com.sec.android.app.BlackScreen.BSCREENCAMERAOFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "KeyguardViewMediator"

    const-string v8, "receive Blackscreen Camera launch OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_16
    const-string v7, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v10, v10}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_17
    const-string v7, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v12}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    const-string v7, "SIMCARD"

    const-string v8, "FROM"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {v9}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    :goto_4
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_18
    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    goto :goto_4

    :cond_19
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1a
    const-string v7, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    const-string v7, "SIMCARD"

    const-string v8, "FROM"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-static {v9}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    :goto_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_1b
    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    goto :goto_5

    :cond_1c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1d
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v7, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_1f

    if-eqz v1, :cond_1f

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$3402(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string v7, "android.bluetooth.device.extra.LINKTYPE"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1e
    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_ACL_DISCONNECTED : mWearabledevice =/= device !!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_ACL_DISCONNECTED : mWearabledevice or device is null!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_20
    const-string v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v7, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3402(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelMidRssi()I

    move-result v8

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I
    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelLowRssi()I

    move-result v8

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I
    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$3602(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x3

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I
    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$3702(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I
    invoke-static {v7, v12}, Lcom/android/keyguard/KeyguardViewMediator;->access$3802(Lcom/android/keyguard/KeyguardViewMediator;I)I

    goto/16 :goto_0

    :cond_21
    const-string v7, "com.samsung.pen.INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "penInsert"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " penInsert = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v10, v10}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_22
    const-string v7, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const-string v7, "reason"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EmergencyMode intent is received : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v7, v11}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_23
    const-string v7, "KeyguardViewMediator"

    const-string v8, "wakeUp device!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_24
    const-string v7, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_25
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    goto/16 :goto_0

    :cond_26
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_27

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleAirplaneMode()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_27
    const-string v7, "com.android.keyguard.action.flight_mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_28

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleShowAirplaneConfirmDialog()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_28
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->buildDisableDialog()V
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0
.end method
