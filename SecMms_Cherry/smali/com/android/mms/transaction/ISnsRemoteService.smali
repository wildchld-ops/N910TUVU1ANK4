.class public interface abstract Lcom/android/mms/transaction/ISnsRemoteService;
.super Ljava/lang/Object;
.source "ISnsRemoteService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/ISnsRemoteService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/android/mms/transaction/ISnsRemoteServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/android/mms/transaction/ISnsRemoteServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
