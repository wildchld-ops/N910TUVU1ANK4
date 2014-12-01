.class Landroid/bluetooth/BluetoothHeadset$2;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    # getter for: Landroid/bluetooth/BluetoothHeadset;->DBG:Z
    invoke-static {}, Landroid/bluetooth/BluetoothHeadset;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->access$202(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    # getter for: Landroid/bluetooth/BluetoothHeadset;->DBG:Z
    invoke-static {}, Landroid/bluetooth/BluetoothHeadset;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    # setter for: Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->access$202(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
