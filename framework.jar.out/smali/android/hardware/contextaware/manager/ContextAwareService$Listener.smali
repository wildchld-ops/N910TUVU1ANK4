.class public final Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field private mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

.field private final mServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/contextaware/manager/ContextAwareService;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;)Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    return-object p1
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contextaware/manager/IContextAwareCallback;->caCallback(ILandroid/os/Bundle;)V

    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v3, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_1
    move-exception v2

    :try_start_4
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "[binderDied 01] Mutex is locked for binderDied"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$400(Landroid/hardware/contextaware/manager/ContextAwareService;)Landroid/hardware/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    const/4 v5, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v0, "[binderDied 02] Mutex is unlocked for binderDied"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public decreaseServiceCount(I)V
    .locals 4

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getServices()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .locals 4

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setContextCollectionResultNotifyCompletion(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v0, p1}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    return-void
.end method
