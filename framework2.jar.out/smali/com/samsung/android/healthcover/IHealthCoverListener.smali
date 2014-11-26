.class public interface abstract Lcom/samsung/android/healthcover/IHealthCoverListener;
.super Ljava/lang/Object;
.source "IHealthCoverListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/healthcover/IHealthCoverListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataCallback([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
