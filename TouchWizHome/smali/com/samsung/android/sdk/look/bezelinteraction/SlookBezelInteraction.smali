.class public final Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;
.super Ljava/lang/Object;
.source "SlookBezelInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;,
        Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "BezelInteractionService"

.field private static final TAG:Ljava/lang/String; = "SlookBezelInteraction"

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/bezelinteraction/IBezelManager;


# instance fields
.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object p1, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/bezelinteraction/IBezelManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    if-nez v0, :cond_1

    const-string v0, "BezelInteractionService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    invoke-interface {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookBezelInteraction"

    const-string v1, "mService is not valid so retrieve the service again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BezelInteractionService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public enableBezelInteraction(Z)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/bezelinteraction/IBezelManager;->enableBezelInteraction(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SlookBezelInteraction"

    const-string v3, "RemoteException in enableBezelInteraction : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V
    .locals 10

    const-string v6, "SlookBezelInteraction"

    const-string v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v6, "SlookBezelInteraction"

    const-string v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->getListener()Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v2

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;-><init>(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Landroid/content/ComponentName;

    sget-object v8, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0, v6}, Lcom/samsung/android/bezelinteraction/IBezelManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catch_0
    move-exception v3

    :try_start_5
    const-string v6, "SlookBezelInteraction"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V
    .locals 8

    const-string v5, "SlookBezelInteraction"

    const-string v6, "unregisterListener!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v5, "SlookBezelInteraction"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->getListener()Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v1

    :cond_2
    if-nez v0, :cond_3

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "SlookBezelInteraction"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
