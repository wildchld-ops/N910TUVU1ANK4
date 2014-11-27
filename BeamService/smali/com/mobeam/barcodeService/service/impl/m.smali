.class public final Lcom/mobeam/barcodeService/service/impl/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mobeam/mbss/service/MBSS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/mobeam/mbss/service/MBSS;
    .locals 13

    const/4 v5, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/m;->a:Lcom/mobeam/mbss/service/MBSS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v12, La/a/a/a/a;

    new-instance v0, Ljava/net/URL;

    const-string v1, "https://platform.mobeam.net/mbss/jsonrpc"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v0}, La/a/a/a/a;-><init>(Ljava/net/URL;)V

    new-instance v10, Lcom/google/a/t;

    invoke-direct {v10}, Lcom/google/a/t;-><init>()V

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    iput-object v0, v10, Lcom/google/a/t;->h:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/a/t;->e:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, v10, Lcom/google/a/t;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v10, Lcom/google/a/t;->h:Ljava/lang/String;

    iget v2, v10, Lcom/google/a/t;->i:I

    iget v3, v10, Lcom/google/a/t;->j:I

    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/a/a;

    invoke-direct {v0, v1}, Lcom/google/a/a;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/al;->a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/al;->a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/al;->a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/ao;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/google/a/k;

    iget-object v1, v10, Lcom/google/a/t;->a:Lcom/google/a/b/o;

    iget-object v2, v10, Lcom/google/a/t;->c:Lcom/google/a/j;

    iget-object v3, v10, Lcom/google/a/t;->d:Ljava/util/Map;

    iget-boolean v4, v10, Lcom/google/a/t;->g:Z

    iget-boolean v5, v10, Lcom/google/a/t;->k:Z

    iget-boolean v6, v10, Lcom/google/a/t;->o:Z

    iget-boolean v7, v10, Lcom/google/a/t;->m:Z

    iget-boolean v8, v10, Lcom/google/a/t;->n:Z

    iget-boolean v9, v10, Lcom/google/a/t;->l:Z

    iget-object v10, v10, Lcom/google/a/t;->b:Lcom/google/a/ai;

    invoke-direct/range {v0 .. v11}, Lcom/google/a/k;-><init>(Lcom/google/a/b/o;Lcom/google/a/j;Ljava/util/Map;ZZZZZZLcom/google/a/ai;Ljava/util/List;)V

    new-instance v1, La/a/a/a/c;

    invoke-direct {v1, v0}, La/a/a/a/c;-><init>(Lcom/google/a/k;)V

    const-string v0, "mbss"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mobeam/mbss/service/MBSS;

    aput-object v4, v2, v3

    invoke-virtual {v1, v12, v0, v2}, La/a/a/a/c;->a(La/a/a/a/b;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/mbss/service/MBSS;

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/m;->a:Lcom/mobeam/mbss/service/MBSS;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/m;->a:Lcom/mobeam/mbss/service/MBSS;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    :try_start_3
    new-instance v0, Lcom/google/a/a;

    invoke-direct {v0, v2, v3}, Lcom/google/a/a;-><init>(II)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
