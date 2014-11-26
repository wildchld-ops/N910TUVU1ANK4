.class public interface abstract Landroid/os/storage/sensitive/SDServiceAPI;
.super Ljava/lang/Object;
.source "SDServiceAPI.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/sensitive/SDServiceAPI$Stub;
    }
.end annotation


# virtual methods
.method public abstract processParcel(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLocked()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPassword([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
