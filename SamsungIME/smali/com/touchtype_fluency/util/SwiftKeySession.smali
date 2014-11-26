.class public final Lcom/touchtype_fluency/util/SwiftKeySession;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_MODELS_NGRAM_ORDER:I = 0x4

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/util/LiveLanguagePack;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/touchtype_fluency/Session;

.field private g:Lcom/touchtype_fluency/util/PredictionsListener;

.field private h:Lcom/touchtype_fluency/util/ExclusionPattern;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/touchtype_fluency/util/LoadProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/touchtype_fluency/util/ExclusionPattern;->createDefault()Lcom/touchtype_fluency/util/ExclusionPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LanguagePack;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v5, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->d()V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->e()V

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inconsistent static models (still loaded/reloaded by another thread):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    :cond_2
    return-void
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not loaded - can\'t be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_5

    invoke-direct {p0, v6}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-nez p2, :cond_3

    move v0, v3

    :goto_2
    if-eqz p3, :cond_1

    if-eq v0, v3, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "keeping "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    invoke-direct {p0, v6, v4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "keeping "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v5}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    .locals 6

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unloaded "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, v0, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    :try_start_1
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Live LM path not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f()V

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_1
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    sget-object v6, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v4, v5, v2, v6}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

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

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LoadProgressListener;->onComplete(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/io/File;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost possible training data, but proceeding with personalization merge "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/SwiftKeySession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    return v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/SwiftKeySession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    return v0
.end method

.method public static create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {p0}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;-><init>(Lcom/touchtype_fluency/Session;)V

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->c()V

    return-void
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v1, "impossible - loading a temporary dynamic model doesn\'t throw!"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v1, "impossible - loading a temporary dynamic model doesn\'t throw!"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->b()V

    return-void
.end method

.method static synthetic g(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/Session;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method private declared-synchronized g()Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->g:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/util/g;->a()Lcom/touchtype_fluency/util/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/touchtype_fluency/util/h;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilteredZhuyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/util/j;->a()Lcom/touchtype_fluency/util/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/touchtype_fluency/util/h;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->g()Lcom/touchtype_fluency/util/PredictionsListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-direct {p0, p1, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " broken - re-download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " broken - re-download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " missing - download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-direct {p0, p1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " broken - re-download it. Encountered IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " broken - re-download it. Encountered InvalidDataException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing - download it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    invoke-virtual {v2, p1}, Lcom/touchtype_fluency/util/ExclusionPattern;->a(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v6

    if-eqz v0, :cond_0

    invoke-virtual {v6, p2}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    move v0, v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v6, p3}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v6, p4}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3, v6}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v1, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "Did not delete dynamic LM. Probably means there wasn\'t one there"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v0, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IOException loading model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got InvalidDataException loading model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFiltered12KeyPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/util/g;->a()Lcom/touchtype_fluency/util/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/h;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/touchtype_fluency/util/j;->a(Lcom/touchtype_fluency/Session;)Lcom/touchtype_fluency/util/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/h;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/touchtype_fluency/Predictions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession$8;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Lcom/touchtype_fluency/Session;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method public final loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    return-void
.end method

.method public final declared-synchronized loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/touchtype_fluency/util/SwiftKeySession$1;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LoadProgressListener;->onComplete(Z)V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$2;

    invoke-direct {v1, p0, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$2;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v3, Lcom/touchtype_fluency/util/SwiftKeySession$3;

    invoke-direct {v3, p0, v0, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$3;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$4;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySession$4;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should not merge dynamic models when dynamic models are disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v2, v6, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    sget-object v5, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v3, v6, v4, v5}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Ljava/io/File;)V

    sget-object v4, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v5, "Unloading existing dynamic model"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v4, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v3, "Successfully merged user models"

    invoke-static {v1, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/touchtype_fluency/CountOverflowException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-interface {p3, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got illegal state when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got invalid data when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IOException when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got CountOverflowException when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final mergeLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    return-void
.end method

.method public final preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    return-void
.end method

.method public final declared-synchronized preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/PreservationListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$5;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession$5;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/Set;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    return-void
.end method

.method public final declared-synchronized replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession$6;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTemporaryModel()V
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f()V

    return-void
.end method

.method public final setDynamicModelsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    return-void
.end method

.method public final setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V
    .locals 0

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    return-void
.end method

.method public final setLiveLanguageModelsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    return-void
.end method

.method public final declared-synchronized setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->g:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final submitTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized updateLiveLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$7;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeDynamicModel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V

    :cond_0
    return-void
.end method
