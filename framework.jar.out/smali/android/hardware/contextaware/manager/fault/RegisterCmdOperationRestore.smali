.class Landroid/hardware/contextaware/manager/fault/RegisterCmdOperationRestore;
.super Landroid/hardware/contextaware/manager/fault/RestoreTransaction;
.source "RegisterCmdOperationRestore.java"


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/manager/ContextManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/fault/RestoreTransaction;-><init>(Landroid/hardware/contextaware/manager/ContextManager;)V

    return-void
.end method


# virtual methods
.method protected final getRestoreType()Ljava/lang/String;
    .locals 1

    const-string v0, "REGISTER_CMD_RESTORE"

    return-object v0
.end method

.method protected final runRestore(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 6

    if-nez p1, :cond_1

    const-string v0, "listener is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "token is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/fault/RegisterCmdOperationRestore;->getContextManager()Landroid/hardware/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    goto :goto_0
.end method
