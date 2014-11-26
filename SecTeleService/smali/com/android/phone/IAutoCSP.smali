.class public interface abstract Lcom/android/phone/IAutoCSP;
.super Ljava/lang/Object;
.source "IAutoCSP.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IAutoCSP$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAutoCSPEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
