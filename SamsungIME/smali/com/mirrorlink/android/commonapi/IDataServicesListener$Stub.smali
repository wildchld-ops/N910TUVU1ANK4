.class public abstract Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;
.super Landroid/os/Binder;
.source "IDataServicesListener.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDataServicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDataServicesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDataServicesListener"

.field static final TRANSACTION_onAvailableServicesChanged:I = 0x1

.field static final TRANSACTION_onGetDataObjectResponse:I = 0x5

.field static final TRANSACTION_onRegisterForService:I = 0x2

.field static final TRANSACTION_onSetDataObjectResponse:I = 0x4

.field static final TRANSACTION_onSubscribeResponse:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDataServicesListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onAvailableServicesChanged(Ljava/util/List;)V

    goto :goto_0

    :sswitch_2
    const-string v8, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v2, v7

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onRegisterForService(IZ)V

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :sswitch_3
    const-string v8, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v3, v7

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onSubscribeResponse(IIZII)V

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_2

    :sswitch_4
    const-string v8, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v7

    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onSetDataObjectResponse(IIZ)V

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_3

    :sswitch_5
    const-string v8, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v3, v7

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onGetDataObjectResponse(IIZLandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    move v3, v0

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
