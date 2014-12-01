.class final Lcom/android/settings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$AclDisconnectedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$GearConnectedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$LocalUuidChanged;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothEventManager;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$GearConnectedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$GearConnectedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$AclDisconnectedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$AclDisconnectedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    const-string v0, "com.broadcom.bt.action.ACTION_UUID_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$LocalUuidChanged;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$LocalUuidChanged;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothEventManager;->DBG:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3
.end method


# virtual methods
.method addHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothCallback;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method removeProfileHandler(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
