.class final Lcom/touchtype_fluency/util/e$1;
.super Lcom/touchtype_fluency/util/Downloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/e;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/e;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-static {v0}, Lcom/touchtype_fluency/util/e;->b(Lcom/touchtype_fluency/util/e;)Lcom/touchtype_fluency/util/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->getTempDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-static {v0}, Lcom/touchtype_fluency/util/e;->c(Lcom/touchtype_fluency/util/e;)Lcom/touchtype_fluency/util/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-static {v0}, Lcom/touchtype_fluency/util/e;->d(Lcom/touchtype_fluency/util/e;)Ljava/net/URL;

    move-result-object v0

    iget-object v2, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-static {v2}, Lcom/touchtype_fluency/util/e;->e(Lcom/touchtype_fluency/util/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-static {v5}, Lcom/touchtype_fluency/util/e;->c(Lcom/touchtype_fluency/util/e;)Lcom/touchtype_fluency/util/c$a;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v2, v5}, Lcom/touchtype_fluency/util/HttpDownload;->downloadZip(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Lcom/touchtype_fluency/util/ProgressListener;)Ljava/util/Vector;

    invoke-static {v4}, Lcom/touchtype_fluency/util/a;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/e;->g()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    invoke-static {v4, v2}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z

    move-result v2

    invoke-static {v1, v0, v2, v3}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/e;ZZZ)V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_3
    const-string v1, "LanguagePack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "download("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v5}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") interrupted (tidying up)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v1, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z

    move-result v2

    invoke-static {v1, v0, v2, v3}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/e;ZZZ)V

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    :try_start_4
    const-string v2, "LanguagePack"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v6}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") error (tidying up): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/e;ZZZ)V

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, v1

    :goto_5
    :try_start_5
    const-string v5, "LanguagePack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "download("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") invalid sha1 (tidying up): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v0, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/e;ZZZ)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_6
    iget-object v2, p0, Lcom/touchtype_fluency/util/e$1;->a:Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z

    move-result v4

    invoke-static {v2, v1, v4, v3}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/e;ZZZ)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_6

    :catchall_3
    move-exception v0

    move v1, v2

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move v0, v1

    goto/16 :goto_3
.end method
