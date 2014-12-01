.class public Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;
.super Landroid/os/Handler;
.source "ResourceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/orca/shop/client/library/ResourceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalHandler"
.end annotation


# static fields
.field private static final WHAT_SAVE_TO_CACHE:I = 0x0

.field private static final WHAT_USER_LOGIC:I = 0x64

.field private static final WHAT_WITHOUT_CACHE:I = 0x1


# instance fields
.field private final mImageDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

.field final synthetic this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;


# direct methods
.method constructor <init>(Lcom/sec/orca/shop/client/library/ResourceDispatcher;Lcom/sec/orca/shop/client/library/ResourceDispatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->mImageDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    return-void
.end method

.method static synthetic access$0(Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->requestRedraw(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Z)V

    return-void
.end method

.method private requestRedraw(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
            "<*>;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/16 v8, 0x64

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->mImageDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    # getter for: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->mLocker:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$0(Lcom/sec/orca/shop/client/library/ResourceDispatcher;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    move-object v0, v6

    check-cast v0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;

    move-object v3, v0

    const/4 v6, 0x1

    aget-object v6, v2, v6

    move-object v0, v6

    check-cast v0, Ljava/util/concurrent/Callable;

    move-object v4, v0

    :goto_0
    invoke-virtual {v3}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->mImageDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    iget-object v6, v6, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    # invokes: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->recycleIfNeeds(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V
    invoke-static {v6, v3}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$1(Lcom/sec/orca/shop/client/library/ResourceDispatcher;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V

    :goto_1
    monitor-exit v7

    return-void

    :cond_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;

    move-object v3, v0

    goto :goto_0

    :cond_3
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_4

    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_4
    :try_start_2
    iget v6, p1, Landroid/os/Message;->what:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    # getter for: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->mCacheLoader:Lcom/sec/orca/shop/client/library/ICacheLoader;
    invoke-static {v6}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$2(Lcom/sec/orca/shop/client/library/ResourceDispatcher;)Lcom/sec/orca/shop/client/library/ICacheLoader;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/sec/orca/shop/client/library/ICacheLoader;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    # getter for: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;
    invoke-static {v6}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$3(Lcom/sec/orca/shop/client/library/ResourceDispatcher;)Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    # getter for: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;
    invoke-static {v6}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$3(Lcom/sec/orca/shop/client/library/ResourceDispatcher;)Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;->onCompleted(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V

    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->onPostDispatch(Ljava/lang/Object;Z)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_7
    :try_start_3
    iget-object v6, p0, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    # getter for: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;
    invoke-static {v6}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$3(Lcom/sec/orca/shop/client/library/ResourceDispatcher;)Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/sec/orca/shop/client/library/ResourceDispatcher$OnResourceDispatchStateChanged;->onFailed(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method runOnUiThread(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
            "<*>;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/orca/shop/client/library/ResourceDispatcher$InternalHandler;->runOnUiThread(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;J)V

    return-void
.end method

.method runOnUiThread(Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
            "<*>;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x64

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
