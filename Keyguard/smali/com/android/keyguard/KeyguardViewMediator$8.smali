.class Lcom/android/keyguard/KeyguardViewMediator$8;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v4, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mWearabledevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , isEnabled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3402(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_VALID"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsValidValue:Z
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$5502(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsValidValue:Z
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_IN_CRITERIA"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_OUT_CRITERIA"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3602(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_IN_MARGIN"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3702(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_OUT_MARGIN"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3802(Lcom/android/keyguard/KeyguardViewMediator;I)I

    :goto_0
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUTO_LOCK_SERVICE_VALID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsValidValue:Z
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mCriteria_IN_RSSI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mCriteria_OUT_RSSI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mOffset_IN_RSSI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mOffset_OUT_RSSI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelMidRssi()I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelLowRssi()I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3602(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v5, 0x3

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$3702(Lcom/android/keyguard/KeyguardViewMediator;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3802(Lcom/android/keyguard/KeyguardViewMediator;I)I

    goto :goto_0

    :cond_2
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTO_LOCK_SERVICE : Device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mWearabledevice ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$3402(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTO_LOCK_SERVICE : isSmartUnlockEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_3
    const-string v4, "KeyguardViewMediator"

    const-string v5, "ACTION_AUTO_LOCK_SERVICE : mWearabledevice =/= device !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v4, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$5700()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_6
    const-string v4, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "android.bluetooth.device.action.RSSI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
