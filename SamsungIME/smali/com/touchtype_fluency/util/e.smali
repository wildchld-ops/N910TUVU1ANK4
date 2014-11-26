.class final Lcom/touchtype_fluency/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/touchtype_fluency/util/LiveLanguagePack;


# instance fields
.field private final a:Lcom/touchtype_fluency/util/Storage;

.field private final b:Ljava/lang/String;

.field private c:Ljava/net/URL;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/touchtype_fluency/util/c$a;

.field private k:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;ZLcom/touchtype_fluency/util/Storage;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/touchtype_fluency/util/e$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/e$1;-><init>(Lcom/touchtype_fluency/util/e;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->k:Lcom/touchtype_fluency/util/Downloader;

    iput-object p4, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    iput-object p5, p0, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/touchtype_fluency/util/e;->g:Z

    iput-object p1, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    iput-object p2, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->i:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/util/f;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/touchtype_fluency/util/e$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/e$1;-><init>(Lcom/touchtype_fluency/util/e;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->k:Lcom/touchtype_fluency/util/Downloader;

    iput-object p2, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    iput-object p3, p0, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "archive"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    const-string v0, "sha1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    const-string v0, "version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/touchtype_fluency/util/e;->f:I

    const-string v0, "updateAvailable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->i:Z

    const-string v0, "enabled"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->g:Z

    iput-object p5, p0, Lcom/touchtype_fluency/util/e;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/touchtype_fluency/util/f;

    invoke-direct {v1, v0}, Lcom/touchtype_fluency/util/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/e;ZZZ)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    if-nez v1, :cond_0

    const-string v0, "LanguagePack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") complete - duplicate notification (ignored)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const-string v1, "LanguagePack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->i:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->h:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/Downloader;->setComplete()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/c$a;->onComplete(ZZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/e;)Lcom/touchtype_fluency/util/Storage;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/e;)Lcom/touchtype_fluency/util/c$a;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    return-object v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/e;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "archive"

    iget-object v2, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha1"

    iget-object v2, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    iget v2, p0, Lcom/touchtype_fluency/util/e;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/e;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "updateAvailable"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/e;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/touchtype_fluency/util/c$a;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/touchtype_fluency/util/e;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p1, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    iget-object v0, p1, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->h:Z
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

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/e;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/e;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final cancelDownload()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V

    return-void
.end method

.method final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/e;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->delete(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/touchtype_fluency/util/e;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/touchtype_fluency/util/e;

    iget-object v2, p0, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    iget-object v3, p1, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/e;->g:Z

    iget-boolean v3, p1, Lcom/touchtype_fluency/util/e;->g:Z

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/e;->isDownloaded()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-live"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentVersion()I
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/util/e;->f:I

    return v0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/touchtype_fluency/util/e;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x2bf

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/e;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final declared-synchronized isBroken()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/e;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/e;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->isDownloaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isDownloadInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->k:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.method public final isDownloaded()Z
    .locals 4

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->fileExists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/e;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isUpdateAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/e;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/e;->j:Lcom/touchtype_fluency/util/c$a;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/c$a;->a(Lcom/touchtype_fluency/util/ProgressListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->c:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
