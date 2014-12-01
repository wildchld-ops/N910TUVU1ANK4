.class Landroid/webkitsec/WebCoreThreadWatchdog;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final HEARTBEAT_PERIOD:I = 0x2710

.field private static final IS_ALIVE:I = 0x64

.field private static final SUBSEQUENT_TIMEOUT_PERIOD:I = 0x3a98

.field private static final TIMED_OUT:I = 0x65

.field private static final TIMEOUT_PERIOD:I = 0xea60

.field private static sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mWebCoreThreadHandler:Landroid/os/Handler;

.field private mWebViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkitsec/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/WebCoreThreadWatchdog;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkitsec/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkitsec/WebCoreThreadWatchdog;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    return-object v0
.end method

.method private addWebView(Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createHandler()V
    .locals 2

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkitsec/WebCoreThreadWatchdog$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebCoreThreadWatchdog$1;-><init>(Landroid/webkitsec/WebCoreThreadWatchdog;)V

    iput-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized pause()V
    .locals 2

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkitsec/WebCoreThreadWatchdog;->pauseWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pauseWatchdog()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mPaused:Z

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static declared-synchronized registerWebView(Landroid/webkitsec/WebViewClassic;)V
    .locals 2

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebCoreThreadWatchdog;->addWebView(Landroid/webkitsec/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeWebView(Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized resume()V
    .locals 2

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkitsec/WebCoreThreadWatchdog;->resumeWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resumeWatchdog()V
    .locals 4

    iget-boolean v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mPaused:Z

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    iget-object v2, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static declared-synchronized start(Landroid/os/Handler;)Landroid/webkitsec/WebCoreThreadWatchdog;
    .locals 4

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebCoreThreadWatchdog;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    const-string v3, "WebCoreThreadWatchdog"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterWebView(Landroid/webkitsec/WebViewClassic;)V
    .locals 2

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/WebCoreThreadWatchdog;->sInstance:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebCoreThreadWatchdog;->removeWebView(Landroid/webkitsec/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-direct {p0}, Landroid/webkitsec/WebCoreThreadWatchdog;->createHandler()V

    const-class v1, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xc5

    iget-object v3, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
