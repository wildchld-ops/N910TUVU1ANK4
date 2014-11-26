.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.keystore"

.field static final TRANSACTION_check_password:I = 0x1b

.field static final TRANSACTION_clear_uid:I = 0x17

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_del_as_user:I = 0x25

.field static final TRANSACTION_del_key:I = 0x11

.field static final TRANSACTION_del_key_as_user:I = 0x26

.field static final TRANSACTION_duplicate:I = 0x15

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_get_by_uid:I = 0x18

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x14

.field static final TRANSACTION_grant:I = 0x12

.field static final TRANSACTION_import:I = 0xd

.field static final TRANSACTION_import_as_user:I = 0x24

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_insert_as_user:I = 0x23

.field static final TRANSACTION_is_hardware_backed:I = 0x16

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_lock_mu:I = 0x1d

.field static final TRANSACTION_password:I = 0x8

.field static final TRANSACTION_password_mu:I = 0x1c

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_reset_as_user:I = 0x28

.field static final TRANSACTION_reset_hard_mu:I = 0x22

.field static final TRANSACTION_reset_mu:I = 0x20

.field static final TRANSACTION_saw:I = 0x6

.field static final TRANSACTION_set_max_retry_count:I = 0x19

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_test:I = 0x1

.field static final TRANSACTION_test_as_user:I = 0x27

.field static final TRANSACTION_test_mu:I = 0x1f

.field static final TRANSACTION_ungrant:I = 0x13

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_unlock_mu:I = 0x1e

.field static final TRANSACTION_verify:I = 0xf

.field static final TRANSACTION_zero:I = 0xb

.field static final TRANSACTION_zero_mu:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.security.keystore"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2
    .param p0    # Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.security.keystore"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/security/IKeystoreService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "android.security.keystore"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "android.security.keystore"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/security/IKeystoreService$Stub;->test()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
