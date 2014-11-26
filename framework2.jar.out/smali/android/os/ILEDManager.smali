.class public interface abstract Landroid/os/ILEDManager;
.super Ljava/lang/Object;
.source "ILEDManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ILEDManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract setFlashingLED(Landroid/os/IBinder;IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract turnOffLED(Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
