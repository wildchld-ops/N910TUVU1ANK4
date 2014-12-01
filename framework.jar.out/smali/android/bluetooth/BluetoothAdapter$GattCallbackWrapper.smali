.class Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_REG_TIMEOUT:I = 0x7d0

.field private static final LE_CALLBACK_REG_WAIT_COUNT:I = 0x5


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

.field private mBluetoothAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsBgScan:Z

.field private mLeHandle:I

.field private final mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mScanFilter:[Ljava/util/UUID;

.field private mScanInterval:I

.field private mScanWindow:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;IIZZ)V
    .locals 1

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    iput p4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanInterval:I

    iput p5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanWindow:I

    iput-boolean p6, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsActive:Z

    iput-boolean p7, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsBgScan:Z

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V
    .locals 1

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    iput-object p4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-object v0
.end method

.method private waitForRegisteration(I)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    monitor-exit p0

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    if-ge v0, p1, :cond_1

    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v4, "BluetoothAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback reg wait interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-lez v4, :cond_2

    const/4 v2, 0x1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public advertiseStarted()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public onAdvertiseStateChange(II)V
    .locals 6

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on advertise call back, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {v3, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStart(I)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregistering client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    const/4 v3, -0x1

    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->access$602(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {v3, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStop(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unregister client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_2
    :try_start_4
    const-string v3, "BluetoothAdapter"

    const-string v4, "cannot unregister client, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0

    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClientRegistered(II)V
    .locals 10

    const/4 v9, -0x1

    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClientRegistered() - status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-ne v1, v9, :cond_0

    const-string v1, "BluetoothAdapter"

    const-string v3, "onClientRegistered LE scan canceled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_a

    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "BluetoothAdapter"

    const-string v3, "onClientRegistered: iGatt is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->startAdvertising(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v9, :cond_2

    if-eqz v0, :cond_2

    :try_start_5
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :cond_3
    :try_start_7
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsBgScan:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v1, :cond_4

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_8
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to start le scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v1, v1

    new-array v2, v1, [Landroid/os/ParcelUuid;

    const/4 v8, 0x0

    :goto_3
    array-length v1, v2

    if-eq v8, v1, :cond_5

    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v3, v3, v8

    invoke-direct {v1, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v1, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/bluetooth/IBluetoothGatt;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v1, :cond_7

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanInterval:I

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanWindow:I

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsActive:Z

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startBgScan(IIIZ)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v1, v1

    new-array v2, v1, [Landroid/os/ParcelUuid;

    const/4 v8, 0x0

    :goto_4
    array-length v1, v2

    if-eq v8, v1, :cond_8

    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v3, v3, v8

    invoke-direct {v1, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v1, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanInterval:I

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanWindow:I

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsActive:Z

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->startBgScanWithUuids(I[Landroid/os/ParcelUuid;IIZ)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "BluetoothAdapter"

    const-string v3, "onClientRegistered, BluetoothAdapter null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v7

    :try_start_a
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to unregister callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 0

    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onMonitorRssi(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0

    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v2, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    const-string v2, "BluetoothAdapter"

    const-string v3, "onScanResult, BluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public scanStarted()Z
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public stopAdvertising()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_0

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertising()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop advertising"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, "BluetoothAdapter"

    const-string v4, "stopAdvertising, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopLeScan()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_0

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "BluetoothAdapter"

    const-string v4, "stopLeScan: iGatt is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsBgScan:Z

    if-nez v3, :cond_2

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    const/4 v3, -0x1

    :try_start_5
    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_6
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->stopBgScan(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_7
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop scan and unregister"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_8
    const-string v3, "BluetoothAdapter"

    const-string v4, "Android IPC failed while stopping scan"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_9
    const-string v3, "BluetoothAdapter"

    const-string v4, "stopLeScan, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method
