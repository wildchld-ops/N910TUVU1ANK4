.class public Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;
.super Ljava/lang/Object;
.source "GbaServiceManager.java"


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.samsung.authentication.gba.action.GET_SERVICE"

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final MAX_ATTEMPTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GbaServiceManager"

.field private static final iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final syObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceManager"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->syObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceWrapper()Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;
    .locals 13

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getInstance()Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->getRemoteInstance()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    sget-object v9, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->syObject:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    const-string v8, "com.samsung.authentication.gba.action.GET_SERVICE"

    invoke-virtual {v0, v8, v7}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->bindService(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v10, "GbaServiceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Service bind Result is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v3, :cond_1

    const/4 v8, 0x5

    if-ge v1, v8, :cond_1

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v10, "GbaServiceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to get IgbaService Intance "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->getRemoteServiceInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_0

    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_1
    :try_start_3
    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v10, "GbaServiceManager"

    const-string v11, "Got IgbaService Intance"

    invoke-virtual {v8, v10, v11}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, v8, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v5

    :goto_3
    return-object v4

    :cond_2
    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v9, "GbaServiceManager"

    const-string v10, "IgbaService Intance is already present with Manager"

    invoke-virtual {v8, v9, v10}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_2
.end method

.method public static releaseService()Z
    .locals 8

    const/4 v1, 0x0

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->iGbaServiceInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->syObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getInstance()Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->getRemoteInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->unbindService(Ljava/lang/Object;)Z

    move-result v1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service unbind Result is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceManager"

    const-string v6, "Service Connection Instance is null"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceManager"

    const-string v6, "Android Context is null"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
