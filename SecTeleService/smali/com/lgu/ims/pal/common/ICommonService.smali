.class public interface abstract Lcom/lgu/ims/pal/common/ICommonService;
.super Ljava/lang/Object;
.source "ICommonService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lgu/ims/pal/common/ICommonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract GetAccessNetworkInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
