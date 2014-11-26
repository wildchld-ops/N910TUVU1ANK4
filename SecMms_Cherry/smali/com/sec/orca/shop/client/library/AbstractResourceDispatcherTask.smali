.class public abstract Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;
.super Ljava/lang/Object;
.source "AbstractResourceDispatcherTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TK:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mIsSuccess:Z

.field protected mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTK;"
        }
    .end annotation
.end field

.field private mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

.field protected mValue:Ljava/lang/Object;

.field protected mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    instance-of v1, p1, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;

    invoke-virtual {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mIsSuccess:Z

    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDispatch()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostDispatch(Ljava/lang/Object;Z)V
.end method

.method public abstract onPreDispatch()V
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->onDispatch()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->useCache()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mIsSuccess:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-virtual {v1, p0}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->notifyDispatcherTaskFinished(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-virtual {v1, p0}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->notifyDispatcherTaskFinished(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V

    goto :goto_0
.end method

.method protected runOnUiThread(Ljava/util/concurrent/Callable;J)V
    .locals 1
    .param p2    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-virtual {v0, p0, p1}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->runOnUiThread(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setResourceDispatcher(Lcom/sec/orca/shop/client/library/ResourceDispatcher;)V
    .locals 0
    .param p1    # Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    return-void
.end method

.method setSuccess(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mIsSuccess:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public useCache()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
