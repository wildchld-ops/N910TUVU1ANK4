.class public interface abstract Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;
.super Ljava/lang/Object;
.source "ResourceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/orca/shop/client/library/ResourceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnResourceDispatchStateChanged"
.end annotation


# virtual methods
.method public abstract onCompleted(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract onFailed(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
            "<*>;)V"
        }
    .end annotation
.end method
