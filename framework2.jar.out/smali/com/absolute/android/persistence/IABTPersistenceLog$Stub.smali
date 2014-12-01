.class public abstract Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;
.super Landroid/os/Binder;
.source "IABTPersistenceLog.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistenceLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistenceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistenceLog"

.field static final TRANSACTION_clear:I = 0x3

.field static final TRANSACTION_getIterator:I = 0x1

.field static final TRANSACTION_getMaxLogSizeKB:I = 0x6

.field static final TRANSACTION_getNumberOfLogs:I = 0x5

.field static final TRANSACTION_logMessage:I = 0x2

.field static final TRANSACTION_setSize:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistenceLog;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/absolute/android/persistence/IABTPersistenceLog;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getIterator(I)Lcom/absolute/android/persistence/IABTLogIterator;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/absolute/android/persistence/IABTLogIterator;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    :sswitch_3
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->clear()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    :sswitch_4
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->setSize(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    :sswitch_5
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getNumberOfLogs()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :sswitch_6
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getMaxLogSizeKB()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
