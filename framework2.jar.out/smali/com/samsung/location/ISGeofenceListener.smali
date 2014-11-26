.class public interface abstract Lcom/samsung/location/ISGeofenceListener;
.super Ljava/lang/Object;
.source "ISGeofenceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/ISGeofenceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGeofenceDetected(ILandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
