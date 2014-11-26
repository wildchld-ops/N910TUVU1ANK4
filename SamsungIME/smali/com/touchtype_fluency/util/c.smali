.class final Lcom/touchtype_fluency/util/c;
.super Lcom/touchtype_fluency/util/LanguagePackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/c$a;
    }
.end annotation


# static fields
.field static a:Lcom/touchtype_fluency/LoggingListener;

.field private static volatile c:Lcom/touchtype_fluency/util/LanguagePackManager;


# instance fields
.field private b:Ljava/lang/String;

.field private final d:Lcom/touchtype_fluency/util/Storage;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/touchtype_fluency/util/d;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/touchtype_fluency/util/RefreshListener;

.field private j:I

.field private k:I

.field private l:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/LoggingListener;

    sput-object v0, Lcom/touchtype_fluency/util/c;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManager;-><init>()V

    iput v0, p0, Lcom/touchtype_fluency/util/c;->j:I

    iput v0, p0, Lcom/touchtype_fluency/util/c;->k:I

    new-instance v0, Lcom/touchtype_fluency/util/c$1;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/c$1;-><init>(Lcom/touchtype_fluency/util/c;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->l:Lcom/touchtype_fluency/util/Downloader;

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    iput-object p2, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    iput p3, p0, Lcom/touchtype_fluency/util/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/Thread;

    sput-object p4, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/LoggingListener;

    :try_start_0
    invoke-interface {p1}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "languagePacks.json"

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/util/Storage;->loadConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/util/d;

    invoke-direct {v1, v0, p1}, Lcom/touchtype_fluency/util/d;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/d;->b()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LanguagePackManager"

    const-string v1, "Empty configuration file was read - will create empty languagePacks.json. Call verify() to check for preinstalled language packs."

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->clearLPConfiguration()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "settings.json"

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/util/Storage;->loadConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - will create empty languagePacks.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Call verify() to check for preinstalled language packs."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->clearLPConfiguration()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to read or save configuration or settings: storage not available - will use empty languagePacks.json"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/touchtype_fluency/util/d;

    const-string v1, "[]"

    invoke-direct {v0, v1, p1}, Lcom/touchtype_fluency/util/d;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/util/c;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/touchtype_fluency/util/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/c;-><init>(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)V

    sput-object v0, Lcom/touchtype_fluency/util/c;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    :cond_0
    sget-object v0, Lcom/touchtype_fluency/util/c;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/RefreshListener;)Lcom/touchtype_fluency/util/RefreshListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Lcom/touchtype_fluency/util/RefreshListener;

    return-object v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 3

    instance-of v0, p1, Lcom/touchtype_fluency/util/b;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v0, p1

    check-cast v0, Lcom/touchtype_fluency/util/b;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " broken: re-install preinstalled version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/util/c;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void

    :cond_0
    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " broken: re-download it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/touchtype_fluency/util/RefreshListener;Z)V
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->i:Lcom/touchtype_fluency/util/RefreshListener;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->l:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->forceDownload()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->l:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    goto :goto_0

    :cond_2
    const-string v0, "LanguagePackManager"

    const-string v1, "refresh(): no storage available"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/d;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/d;)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "serverJsonETag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "LanguagePackManager"

    const-string v1, "Resetting and saving the local settings after reading invalid settings.json"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LanguagePackManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/c;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/touchtype_fluency/util/c;->k:I

    iget v1, p0, Lcom/touchtype_fluency/util/c;->j:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/touchtype_fluency/util/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/touchtype_fluency/util/c;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private a(Lcom/touchtype_fluency/Session;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getAllLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/touchtype_fluency/Session;->verify(Lcom/touchtype_fluency/ModelSetDescription;)V

    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not verified, with IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/LanguagePack;)V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not verified, with InvalidDataException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/LanguagePack;)V

    move v0, v2

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/Session;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/Session;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/c;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/touchtype_fluency/util/c;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/Storage;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "languagePacks.json"

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to save configuration: storage not available"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->e()V

    return-void
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/RefreshListener;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Lcom/touchtype_fluency/util/RefreshListener;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    const-string v1, "{}"

    const-string v2, "settings.json"

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "serverJsonETag"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "settings.json"

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    const-string v0, "LanguagePackManager"

    const-string v1, "Unable to save settings: storage not available"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic f(Lcom/touchtype_fluency/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    return-void
.end method

.method static synthetic g(Lcom/touchtype_fluency/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->b()V

    return-void
.end method

.method static synthetic h(Lcom/touchtype_fluency/util/c;)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload;->createPreinstalledConfiguration(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/touchtype_fluency/util/d;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-direct {v1, v0, v2}, Lcom/touchtype_fluency/util/d;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/d;->b()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/d;)V

    :cond_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->d()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized clearLPConfiguration()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/touchtype_fluency/util/d;

    const-string v1, "[]"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/d;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/touchtype_fluency/util/b;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/b;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/b;->a(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/b;->c()V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    :cond_1
    return-void
.end method

.method public final downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v1, p1, Lcom/touchtype_fluency/util/b;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/b;

    new-instance v1, Lcom/touchtype_fluency/util/c$a;

    invoke-direct {v1, p0, p2}, Lcom/touchtype_fluency/util/c$a;-><init>(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener;)V

    invoke-virtual {p1, v1}, Lcom/touchtype_fluency/util/b;->a(Lcom/touchtype_fluency/util/c$a;)V

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, v1, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final downloadLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v1, p1, Lcom/touchtype_fluency/util/e;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/e;

    new-instance v1, Lcom/touchtype_fluency/util/c$a;

    invoke-direct {v1, p0, p2}, Lcom/touchtype_fluency/util/c$a;-><init>(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener;)V

    invoke-virtual {p1, v1}, Lcom/touchtype_fluency/util/e;->a(Lcom/touchtype_fluency/util/c$a;)V

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, v1, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/touchtype_fluency/util/c;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v3}, Lcom/touchtype_fluency/util/c;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, v2, v3}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/touchtype_fluency/util/c;->j:I

    iput v2, p0, Lcom/touchtype_fluency/util/c;->j:I

    new-instance v2, Lcom/touchtype_fluency/util/c$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/touchtype_fluency/util/c$3;-><init>(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {p0, v0, v2}, Lcom/touchtype_fluency/util/c;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    move-result v2

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput v1, p0, Lcom/touchtype_fluency/util/c;->j:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v2

    if-ne p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before trying to enable it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getEnabledLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/touchtype_fluency/util/c;->f:I

    if-ge v2, v3, :cond_2

    instance-of v1, p1, Lcom/touchtype_fluency/util/b;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/b;

    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/b;->a(Z)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    goto :goto_0

    :cond_2
    const-string v0, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t enable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - too many other languages already enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/touchtype_fluency/util/b;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/b;

    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/b;->a(Z)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    goto :goto_0
.end method

.method public final enableLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Z)Z
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/touchtype_fluency/util/e;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v1

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before trying to enable it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/e;->a(Z)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    goto :goto_0
.end method

.method public final declared-synchronized findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/d;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/RefreshListener;Z)V

    return-void
.end method

.method public final declared-synchronized getAllLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/d;->a(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDynamicModel()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    const-string v1, "user"

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getEnabledLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Lcom/touchtype_fluency/util/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/d;->a(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getStorage()Lcom/touchtype_fluency/util/Storage;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method public final refresh(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/touchtype_fluency/util/c;->a(Lcom/touchtype_fluency/util/RefreshListener;Z)V

    return-void
.end method

.method public final setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    check-cast p1, Lcom/touchtype_fluency/util/b;

    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/b;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c;->c()V

    return-void
.end method

.method public final setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/touchtype_fluency/util/b;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/b;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/b;->d()V

    :cond_0
    return-void
.end method

.method public final setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/touchtype_fluency/util/e;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    check-cast p1, Lcom/touchtype_fluency/util/e;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/e;->e()V

    :cond_0
    return-void
.end method

.method public final setMaxDownloads(I)V
    .locals 0

    iput p1, p0, Lcom/touchtype_fluency/util/c;->j:I

    return-void
.end method

.method public final declared-synchronized verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/touchtype_fluency/util/c$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/touchtype_fluency/util/c$2;-><init>(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/Session;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
