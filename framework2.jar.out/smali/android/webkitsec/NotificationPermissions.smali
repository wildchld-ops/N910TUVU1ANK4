.class public final Landroid/webkitsec/NotificationPermissions;
.super Ljava/lang/Object;
.source "NotificationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/NotificationPermissions$Callback;
    }
.end annotation


# static fields
.field static final CLEAR_ALL:I

.field private static sInstance:Landroid/webkitsec/NotificationPermissions;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQueuedMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/NotificationPermissions;->nativeClearAll()V

    return-void
.end method

.method public static getInstance()Landroid/webkitsec/NotificationPermissions;
    .locals 1

    sget-object v0, Landroid/webkitsec/NotificationPermissions;->sInstance:Landroid/webkitsec/NotificationPermissions;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/NotificationPermissions;

    invoke-direct {v0}, Landroid/webkitsec/NotificationPermissions;-><init>()V

    sput-object v0, Landroid/webkitsec/NotificationPermissions;->sInstance:Landroid/webkitsec/NotificationPermissions;

    :cond_0
    sget-object v0, Landroid/webkitsec/NotificationPermissions;->sInstance:Landroid/webkitsec/NotificationPermissions;

    return-object v0
.end method

.method private static native nativeClearAll()V
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/NotificationPermissions;->postMessage(Landroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized createHandler()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/webkitsec/NotificationPermissions$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/NotificationPermissions$1;-><init>(Landroid/webkitsec/NotificationPermissions;)V

    iput-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method
