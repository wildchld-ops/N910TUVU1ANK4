.class final Landroid/hardware/scontext/SContextService$ServiceHandler;
.super Landroid/os/Handler;
.source "SContextService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method public constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x1b

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/scontext/SContextEvent;

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v6}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v5

    const/4 v2, 0x0

    if-ne v5, v8, :cond_2

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextEvent;->getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/scontext/SContextActivityNotification;->getStatus()I

    move-result v0

    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->getActionListener(I)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v4}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->saveEvent(Landroid/hardware/scontext/SContextEvent;)V

    :cond_2
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-ne v5, v8, :cond_4

    if-eqz v2, :cond_3

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/SContextService$Listener;

    invoke-virtual {v6, v4}, Landroid/hardware/scontext/SContextService$Listener;->callback(Landroid/hardware/scontext/SContextEvent;)V

    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/SContextService$Listener;

    invoke-virtual {v6, v4}, Landroid/hardware/scontext/SContextService$Listener;->callback(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_1

    :cond_5
    if-eq v5, v8, :cond_6

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    :cond_6
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextService$Listener;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Landroid/hardware/scontext/SContextService$Listener;->callback(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_2
.end method
