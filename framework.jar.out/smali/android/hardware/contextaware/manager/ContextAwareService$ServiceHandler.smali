.class public final Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/manager/ContextAwareService;


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private callback(ILandroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    if-eqz v1, :cond_0

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    # invokes: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$700(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyOperationCheckResult(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v6, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v6}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    :goto_0
    return v4

    :cond_0
    if-nez p2, :cond_1

    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_2
    const-string v4, "Binder"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v4, "Service"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v0, :cond_3

    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListener(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const-string v4, "CheckResult"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "This cmd proccess was stopped and that\'s because the fault detection result is not success"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v4, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    :cond_4
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_5
    const-string v4, "Service"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_6

    const-string v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    # invokes: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v2, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$700(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v2, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->notifyOperationCheckResult(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->callback(ILandroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z
    invoke-static {v3, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$602(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
