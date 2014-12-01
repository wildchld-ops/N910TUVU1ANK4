.class public abstract Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;
.super Landroid/os/Binder;
.source "ICommonAPIService.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/ICommonAPIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/ICommonAPIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.ICommonAPIService"

.field static final TRANSACTION_applicationStarted:I = 0x2

.field static final TRANSACTION_applicationStopping:I = 0x3

.field static final TRANSACTION_getCertificationManager:I = 0x4

.field static final TRANSACTION_getCommonAPIServiceApiLevel:I = 0x1

.field static final TRANSACTION_getConnectionManager:I = 0x5

.field static final TRANSACTION_getContextManager:I = 0x6

.field static final TRANSACTION_getDataServicesManager:I = 0x7

.field static final TRANSACTION_getDeviceInfoManager:I = 0x8

.field static final TRANSACTION_getDeviceStatusManager:I = 0x9

.field static final TRANSACTION_getDisplayManager:I = 0xa

.field static final TRANSACTION_getEventMappingManager:I = 0xb

.field static final TRANSACTION_getNotificationManager:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getCommonAPIServiceApiLevel()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->applicationStarted(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto :goto_0

    :sswitch_3
    const-string v3, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->applicationStopping(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto :goto_0

    :sswitch_4
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/ICertificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/ICertificationListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getCertificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)Lcom/mirrorlink/android/commonapi/ICertificationManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/ICertificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto :goto_0

    :sswitch_5
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IConnectionListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getConnectionManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)Lcom/mirrorlink/android/commonapi/IConnectionManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IConnectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IContextListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IContextListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getContextManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)Lcom/mirrorlink/android/commonapi/IContextManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IContextManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDataServicesManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDataServicesListener;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IDataServicesManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IDeviceInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDeviceInfoManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDeviceStatusManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IDisplayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDisplayListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDisplayManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)Lcom/mirrorlink/android/commonapi/IDisplayManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IDisplayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getEventMappingManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/IEventMappingManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mirrorlink/android/commonapi/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/INotificationListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getNotificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/INotificationListener;)Lcom/mirrorlink/android/commonapi/INotificationManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/mirrorlink/android/commonapi/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
