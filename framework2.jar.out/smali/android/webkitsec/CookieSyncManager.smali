.class public final Landroid/webkitsec/CookieSyncManager;
.super Landroid/webkitsec/WebSyncManager;
.source "CookieSyncManager.java"


# static fields
.field private static sRef:Landroid/webkitsec/CookieSyncManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "CookieSyncManager"

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static checkInstanceIsCreated()V
    .locals 2

    sget-object v0, Landroid/webkitsec/CookieSyncManager;->sRef:Landroid/webkitsec/CookieSyncManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Landroid/webkitsec/CookieSyncManager;
    .locals 3

    const-class v1, Landroid/webkitsec/CookieSyncManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid context argument"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkitsec/CookieSyncManager;->sRef:Landroid/webkitsec/CookieSyncManager;

    if-nez v0, :cond_1

    new-instance v0, Landroid/webkitsec/CookieSyncManager;

    invoke-direct {v0, p0}, Landroid/webkitsec/CookieSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkitsec/CookieSyncManager;->sRef:Landroid/webkitsec/CookieSyncManager;

    :cond_1
    sget-object v0, Landroid/webkitsec/CookieSyncManager;->sRef:Landroid/webkitsec/CookieSyncManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/webkitsec/CookieSyncManager;
    .locals 2

    const-class v1, Landroid/webkitsec/CookieSyncManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkitsec/CookieSyncManager;->checkInstanceIsCreated()V

    sget-object v0, Landroid/webkitsec/CookieSyncManager;->sRef:Landroid/webkitsec/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic resetSync()V
    .locals 0

    invoke-super {p0}, Landroid/webkitsec/WebSyncManager;->resetSync()V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Landroid/webkitsec/WebSyncManager;->run()V

    return-void
.end method

.method public bridge synthetic startSync()V
    .locals 0

    invoke-super {p0}, Landroid/webkitsec/WebSyncManager;->startSync()V

    return-void
.end method

.method public bridge synthetic stopSync()V
    .locals 0

    invoke-super {p0}, Landroid/webkitsec/WebSyncManager;->stopSync()V

    return-void
.end method

.method public bridge synthetic sync()V
    .locals 0

    invoke-super {p0}, Landroid/webkitsec/WebSyncManager;->sync()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .locals 2

    invoke-static {}, Landroid/webkitsec/CookieManager;->getInstance()Landroid/webkitsec/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/CookieManager;->acceptCookie()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/webkitsec/CookieManager;->flushCookieStore()V

    goto :goto_0
.end method
