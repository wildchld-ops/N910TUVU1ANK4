.class public interface abstract Lcom/android/phone/INetworkQueryService2;
.super Ljava/lang/Object;
.source "INetworkQueryService2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/INetworkQueryService2$Stub;
    }
.end annotation


# virtual methods
.method public abstract startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
