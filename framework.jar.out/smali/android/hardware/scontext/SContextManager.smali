.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method private changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "SContextManager"

    const-string v5, "  .changeParameters : SContextListener is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .changeParameters : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v0

    goto :goto_0
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)V

    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    const-string v2, "step_level_monitor_duration"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const-string v2, "pedometer_exercise_mode"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    if-ne p2, v3, :cond_1

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    if-ne p3, v3, :cond_2

    :cond_0
    const-string v2, "pedometer_gender"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "pedometer_height"

    invoke-virtual {v0, v2, p4, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    const-string v2, "pedometer_weight"

    invoke-virtual {v0, v2, p6, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x23

    if-ne p2, v2, :cond_0

    const-string v2, "inactive_timer_alert_count"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_start_time"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_end_time"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_duration"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeatureLevel(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(Landroid/os/IBinder;I)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    const-string v2, "step_cout_alert_step"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_2

    if-eq p3, v3, :cond_2

    const/4 v2, 0x4

    if-ne p3, v2, :cond_3

    :cond_2
    const-string v2, "auto_rotation_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/16 v2, 0x10

    if-ne p2, v2, :cond_7

    const/4 v2, 0x1

    if-eq p3, v2, :cond_5

    if-ne p3, v3, :cond_6

    :cond_5
    const-string/jumbo v2, "wake_up_voice_mode"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const/16 v2, 0x21

    if-ne p2, v2, :cond_8

    const-string v2, "step_level_monitor_duration"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    const-string v2, "flat_motion_for_table_mode_duration"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7

    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    if-ne p2, v6, :cond_3

    const/4 v3, 0x1

    if-eq p3, v3, :cond_0

    if-eq p3, v6, :cond_0

    const-string v3, "SContextManager"

    const-string v4, "The gender is wrong!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    cmpg-double v3, p4, v4

    if-gtz v3, :cond_1

    const-string v3, "SContextManager"

    const-string v4, "The height cannot be less than or equal to 0.0[cm]!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    cmpg-double v3, p6, v4

    if-gtz v3, :cond_2

    const-string v3, "SContextManager"

    const-string v4, "The weight cannot be less than or equal to 0.0[kg]!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "pedometer_gender"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "pedometer_height"

    invoke-virtual {v0, v2, p4, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    const-string v2, "pedometer_weight"

    invoke-virtual {v0, v2, p6, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    const-string v2, "pedometer_exercise_mode"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 4

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    const-string v2, "environment_sensor_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "environment_update_interval"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    const-string v2, "shake_motion_strength"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "shake_motion_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    const-string v2, "sleep_monitor_sensibility"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "sleep_monitor_sampling_interval"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 11

    const/4 v10, 0x0

    new-instance v9, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v9, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x9

    if-ne p2, v2, :cond_1

    const-string v2, "mfp_nomove_duration_thrs"

    invoke-virtual {v9, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "mfp_move_duration_thrs"

    invoke-virtual {v9, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "mfp_move_distance_thrs"

    move-wide/from16 v0, p5

    invoke-virtual {v9, v2, v0, v1}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    const-string v2, "mfp_move_min_duration_thrs"

    move/from16 v0, p7

    invoke-virtual {v9, v2, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v10

    :cond_0
    :goto_0
    return v10

    :cond_1
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    move-wide/from16 v0, p5

    double-to-int v7, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z

    move-result v10

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x23

    if-ne p2, v2, :cond_0

    const-string v2, "inactive_timer_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_alert_count"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 11

    const/4 v10, 0x0

    new-instance v9, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v9, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v1, 0x1c

    if-ne p2, v1, :cond_6

    const/16 v1, 0x5a

    if-gt p4, v1, :cond_0

    const/16 v1, -0x5a

    if-lt p4, v1, :cond_0

    const/16 v1, 0x5a

    move/from16 v0, p5

    if-gt v0, v1, :cond_0

    const/16 v1, -0x5a

    move/from16 v0, p5

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v1, "SContextManager"

    const-string v2, "The angle must be between -90 and 90 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    move/from16 v0, p5

    if-le p4, v0, :cond_2

    const-string v1, "SContextManager"

    const-string v2, "The munumum angle must be less than the maximum angle !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ltz p6, :cond_3

    const/16 v1, 0x2710

    move/from16 v0, p6

    if-le v0, v1, :cond_4

    :cond_3
    const-string v1, "SContextManager"

    const-string v2, "The moving threshold must be between 0 and 10000 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "specific_pose_alert_retention_time"

    invoke-virtual {v9, v1, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v1, "specific_pose_alert_minimum_angle"

    invoke-virtual {v9, v1, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v1, "specific_pose_alert_maximum_angle"

    move/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v1, "specific_pose_alert_moving_thrs"

    move/from16 v0, p6

    invoke-virtual {v9, v1, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v10

    :cond_5
    :goto_1
    move v1, v10

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-ne p2, v1, :cond_5

    move/from16 v0, p5

    int-to-double v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z

    move-result v10

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    const-string v2, "activity_location_logging_stop_period"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "activity_location_logging_wait_period"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "activity_location_logging_statying radius"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "activity_location_logging_area_radius"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "activity_location_logging_lpp_resolution"

    invoke-virtual {v0, v2, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x23

    if-ne p2, v2, :cond_0

    const-string v2, "inactive_timer_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_alert_count"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_start_time"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "inactive_timer_end_time"

    invoke-virtual {v0, v2, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 6

    const/16 v5, 0x7f

    const/16 v4, -0x80

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v3, 0x17

    if-ne p2, v3, :cond_4

    if-gt p3, v5, :cond_0

    if-ge p3, v4, :cond_1

    :cond_0
    const-string v3, "SContextManager"

    const-string v4, "Low temperature must be between -128 and 127."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    if-gt p4, v5, :cond_2

    if-ge p4, v4, :cond_3

    :cond_2
    const-string v3, "SContextManager"

    const-string v4, "High temperature must be between -128 and 127."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ge p3, p4, :cond_5

    const-string v2, "temperature_alert_low_temperature"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "temperature_alert_high_temperature"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    const-string v2, "temperature_alert_is_including"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    const-string v3, "SContextManager"

    const-string v4, "Low temperature must be less than high temperature."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 7

    new-instance v3, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v3, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v5, 0x1b

    if-ne p2, v5, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_2

    aget v5, p3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const-string v5, "SContextManager"

    const-string v6, "This arg cannot have duplicated status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "activity_notification_activity_filter"

    invoke-virtual {v3, v5, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    :cond_3
    invoke-direct {p0, p1, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v4

    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3

    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    const-string v2, "activity_notification_ex_activity_filter"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    const-string v2, "activity_notification_ex_time_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    return v1
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReferenceData(I[B[B)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v4, 0x1

    invoke-interface {v3, v4, p2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v4, 0x2

    invoke-interface {v3, v4, p3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in initializeSContextService: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
