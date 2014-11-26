.class public interface abstract Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;
.super Ljava/lang/Object;
.source "ISnsFacebookForAuthToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAuthTokenNExpires()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
