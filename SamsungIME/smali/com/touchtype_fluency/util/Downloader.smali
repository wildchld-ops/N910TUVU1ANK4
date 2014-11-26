.class public abstract Lcom/touchtype_fluency/util/Downloader;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Thread;

.field private c:Lcom/touchtype_fluency/util/HttpDownload;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->c:Lcom/touchtype_fluency/util/HttpDownload;

    return-object v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blockUntilComplete()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Downloader"

    const-string v1, "Blocking until download complete"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized cancelDownload()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Downloader"

    const-string v1, "Canceling download"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype_fluency/util/Downloader$2;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/Downloader$2;-><init>(Lcom/touchtype_fluency/util/Downloader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doDownload(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload;

    invoke-direct {v0, p1}, Lcom/touchtype_fluency/util/HttpDownload;-><init>(Z)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->c:Lcom/touchtype_fluency/util/HttpDownload;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype_fluency/util/Downloader$1;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/Downloader$1;-><init>(Lcom/touchtype_fluency/util/Downloader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized download()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/util/Downloader;->doDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceDownload()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/util/Downloader;->doDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/Downloader;->a:Z

    return v0
.end method

.method public declared-synchronized isDownloadInProgress()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->c:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
.end method

.method public declared-synchronized setComplete()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype_fluency/util/Downloader;->a:Z

    return-void
.end method
