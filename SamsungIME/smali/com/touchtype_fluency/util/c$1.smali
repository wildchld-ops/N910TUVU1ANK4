.class final Lcom/touchtype_fluency/util/c$1;
.super Lcom/touchtype_fluency/util/Downloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/c;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->FAILED:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    :try_start_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/HttpDownload;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/touchtype_fluency/util/HttpDownload;->download(Ljava/net/URL;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->getResponseCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v2, "LanguagePackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response message on downloading languagePacks.json: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->getResponseMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v5}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/RefreshListener;)Lcom/touchtype_fluency/util/RefreshListener;

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2}, Lcom/touchtype_fluency/util/c;->b(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/touchtype_fluency/util/HttpDownload;->downloadIfEtagChanged(Ljava/net/URL;Ljava/lang/String;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;

    move-result-object v1

    goto :goto_0

    :sswitch_0
    const-string v1, "LanguagePackManager"

    const-string v2, "languagePacks.json is unchanged - not downloaded"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v5}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/RefreshListener;)Lcom/touchtype_fluency/util/RefreshListener;

    goto :goto_2

    :sswitch_1
    :try_start_2
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->getHttpContent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/touchtype_fluency/util/d;

    iget-object v4, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v4}, Lcom/touchtype_fluency/util/c;->c(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/Storage;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/touchtype_fluency/util/d;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/d;->b()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/d;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->d(Lcom/touchtype_fluency/util/c;)V

    :cond_2
    const-string v1, "LanguagePackManager"

    const-string v2, "languagePacks.json downloaded and merged"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    goto :goto_1

    :cond_3
    const-string v1, "LanguagePackManager"

    const-string v2, "downloaded languagePacks.json was empty or invalid (keeping old version)"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    goto/16 :goto_1

    :cond_4
    const-string v1, "LanguagePackManager"

    const-string v2, "HttpResponse is null"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "LanguagePackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to download languagePacks.json (keeping old version): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v1}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v5}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/RefreshListener;)Lcom/touchtype_fluency/util/RefreshListener;

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v2}, Lcom/touchtype_fluency/util/c;->e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$1;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0, v5}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/RefreshListener;)Lcom/touchtype_fluency/util/RefreshListener;

    :cond_5
    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method
