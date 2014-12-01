.class public abstract Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IShareShotServiceCallback.java"

# interfaces
.implements Lcom/samsung/shareshot/IShareShotServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/shareshot/IShareShotServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/shareshot/IShareShotServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.shareshot.IShareShotServiceCallback"

.field static final TRANSACTION_callbackTest:I = 0x1

.field static final TRANSACTION_onJoinInSuccess:I = 0x3

.field static final TRANSACTION_onLeaveOutSuccess:I = 0x4

.field static final TRANSACTION_onRecvEnd:I = 0x5

.field static final TRANSACTION_onServiceBinded:I = 0x2

.field static final TRANSACTION_onShareWithRequestReceived:I = 0xd

.field static final TRANSACTION_onTaskAdded:I = 0x9

.field static final TRANSACTION_onTaskEnded:I = 0xb

.field static final TRANSACTION_onTaskRemoved:I = 0xc

.field static final TRANSACTION_onTaskUpdated:I = 0xa

.field static final TRANSACTION_onUserActivated:I = 0x8

.field static final TRANSACTION_onUserChanged:I = 0x6

.field static final TRANSACTION_onUserListChanged:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/shareshot/IShareShotServiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/shareshot/IShareShotServiceCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->callbackTest(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onServiceBinded()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onJoinInSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onLeaveOutSuccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onRecvEnd(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/shareshot/User;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onUserChanged(Lcom/samsung/shareshot/User;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onUserListChanged(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_8
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/shareshot/User;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onUserActivated(Lcom/samsung/shareshot/User;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_9
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskAdded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_a
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskUpdated(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_b
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskEnded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_c
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskRemoved(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :sswitch_d
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onShareWithRequestReceived(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
