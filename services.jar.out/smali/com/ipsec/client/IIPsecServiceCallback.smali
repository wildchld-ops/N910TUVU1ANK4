.class public interface abstract Lcom/ipsec/client/IIPsecServiceCallback;
.super Ljava/lang/Object;
.source "IIPsecServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IIPsecServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract valueChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
