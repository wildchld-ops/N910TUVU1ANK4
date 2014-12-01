.class final Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;
.super Ljava/lang/Object;
.source "HfDeviceProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HfDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HfDeviceServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/HfDeviceProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/HfDeviceProfile;Lcom/android/settings/bluetooth/HfDeviceProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;-><init>(Lcom/android/settings/bluetooth/HfDeviceProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HFP-HF Profile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    check-cast p2, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    # setter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;
    invoke-static {v3, p2}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$102(Lcom/android/settings/bluetooth/HfDeviceProfile;Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;)Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$100(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$200(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "HFP-HF Profile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HeadsetProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$200(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$300(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$400(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$400(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$502(Lcom/android/settings/bluetooth/HfDeviceProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HFP-HF Profile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    # getter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$400(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;->this$0:Lcom/android/settings/bluetooth/HfDeviceProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/bluetooth/HfDeviceProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HfDeviceProfile;->access$502(Lcom/android/settings/bluetooth/HfDeviceProfile;Z)Z

    return-void
.end method
