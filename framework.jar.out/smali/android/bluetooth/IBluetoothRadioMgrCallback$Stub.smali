.class public abstract Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothRadioMgrCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothRadioMgrCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothRadioMgrCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothRadioMgrCallback"

.field static final TRANSACTION_onAirplaneModeChange:I = 0x3

.field static final TRANSACTION_onBTRadioStateChange:I = 0x2

.field static final TRANSACTION_onGattServiceStateChange:I = 0x1

.field static final TRANSACTION_onUserSwitched:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothRadioMgrCallback;
    .locals 2
    .param p0    # Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onGattServiceStateChange(ZLandroid/bluetooth/IBluetoothGatt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onBTRadioStateChange(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onAirplaneModeChange(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onUserSwitched()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
