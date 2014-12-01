.class final Lcom/android/settings/bluetooth/HfDeviceProfile;
.super Ljava/lang/Object;
.source "HfDeviceProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HfDeviceProfile$1;,
        Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings/bluetooth/HfDeviceProfile;->V:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/bluetooth/HfDeviceProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    new-instance v0, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/HfDeviceProfile$HfDeviceServiceListener;-><init>(Lcom/android/settings/bluetooth/HfDeviceProfile;Lcom/android/settings/bluetooth/HfDeviceProfile$1;)V

    invoke-static {p1, v0}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/HfDeviceProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/HfDeviceProfile;Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;)Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HfDeviceProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/HfDeviceProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v3}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1, p1, v3}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    sget-boolean v1, Lcom/android/settings/bluetooth/HfDeviceProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "HFP-HF Profile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->closeProxy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HFP-HF Profile"

    const-string v2, "Error cleaning up HfDevice proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    const v0, 0x7f020214

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f091c5b

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/HfDeviceProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    const v1, 0x7f091c5e

    goto :goto_0

    :pswitch_2
    const v1, 0x7f091c5d

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/HfDeviceProfile;->mService:Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/hfdevice/BluetoothHfDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HfDevice"

    return-object v0
.end method
