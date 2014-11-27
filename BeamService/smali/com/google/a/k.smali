.class public final Lcom/google/a/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/a/w;

.field final b:Lcom/google/a/af;

.field private final c:Ljava/lang/ThreadLocal;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/a/b/f;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/r;

    invoke-direct {v0}, Lcom/google/a/r;-><init>()V

    sput-object v0, Lcom/google/a/b/q;->a:Lcom/google/a/b/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x0

    sget-object v1, Lcom/google/a/b/o;->a:Lcom/google/a/b/o;

    sget-object v2, Lcom/google/a/d;->a:Lcom/google/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/a/ai;->a:Lcom/google/a/ai;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/a/k;-><init>(Lcom/google/a/b/o;Lcom/google/a/j;Ljava/util/Map;ZZZZZZLcom/google/a/ai;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/a/b/o;Lcom/google/a/j;Ljava/util/Map;ZZZZZZLcom/google/a/ai;Ljava/util/List;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/a/l;

    invoke-direct {v1, p0}, Lcom/google/a/l;-><init>(Lcom/google/a/k;)V

    iput-object v1, p0, Lcom/google/a/k;->c:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/k;->d:Ljava/util/Map;

    new-instance v1, Lcom/google/a/m;

    invoke-direct {v1, p0}, Lcom/google/a/m;-><init>(Lcom/google/a/k;)V

    iput-object v1, p0, Lcom/google/a/k;->a:Lcom/google/a/w;

    new-instance v1, Lcom/google/a/n;

    invoke-direct {v1, p0}, Lcom/google/a/n;-><init>(Lcom/google/a/k;)V

    iput-object v1, p0, Lcom/google/a/k;->b:Lcom/google/a/af;

    new-instance v1, Lcom/google/a/b/f;

    invoke-direct {v1, p3}, Lcom/google/a/b/f;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/a/k;->f:Lcom/google/a/b/f;

    iput-boolean p4, p0, Lcom/google/a/k;->g:Z

    iput-boolean p6, p0, Lcom/google/a/k;->i:Z

    iput-boolean p7, p0, Lcom/google/a/k;->h:Z

    iput-boolean p8, p0, Lcom/google/a/k;->j:Z

    new-instance v2, Lcom/google/a/b/a/r;

    iget-object v1, p0, Lcom/google/a/k;->f:Lcom/google/a/b/f;

    invoke-direct {v2, v1, p2, p1}, Lcom/google/a/b/a/r;-><init>(Lcom/google/a/b/f;Lcom/google/a/j;Lcom/google/a/b/o;)V

    new-instance v3, Lcom/google/a/b/f;

    invoke-direct {v3}, Lcom/google/a/b/f;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/a/b/a/aa;->v:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->m:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->g:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->i:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->k:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    sget-object v1, Lcom/google/a/ai;->a:Lcom/google/a/ai;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/a/b/a/aa;->n:Lcom/google/a/an;

    :goto_0
    invoke-static {v5, v6, v1}, Lcom/google/a/b/a/aa;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/an;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    if-eqz p9, :cond_1

    sget-object v1, Lcom/google/a/b/a/aa;->p:Lcom/google/a/an;

    :goto_1
    invoke-static {v5, v6, v1}, Lcom/google/a/b/a/aa;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/an;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    if-eqz p9, :cond_2

    sget-object v1, Lcom/google/a/b/a/aa;->o:Lcom/google/a/an;

    :goto_2
    invoke-static {v5, v6, v1}, Lcom/google/a/b/a/aa;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/an;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->r:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->t:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->x:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->z:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    new-instance v5, Lcom/google/a/b/a/c;

    invoke-direct {v5}, Lcom/google/a/b/a/c;-><init>()V

    invoke-static {v1, v5}, Lcom/google/a/b/a/aa;->a(Ljava/lang/Class;Lcom/google/a/an;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    new-instance v5, Lcom/google/a/b/a/d;

    invoke-direct {v5}, Lcom/google/a/b/a/d;-><init>()V

    invoke-static {v1, v5}, Lcom/google/a/b/a/aa;->a(Ljava/lang/Class;Lcom/google/a/an;)Lcom/google/a/ao;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->O:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/o;->a:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p11

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/google/a/b/a/e;

    invoke-direct {v1, v3}, Lcom/google/a/b/a/e;-><init>(Lcom/google/a/b/f;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->B:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->D:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->H:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->M:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->F:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->d:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/g;->a:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->K:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/x;->a:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/v;->a:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->I:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/a/b/a/m;

    invoke-direct {v1, v3, p5}, Lcom/google/a/b/a/m;-><init>(Lcom/google/a/b/f;Z)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/a;->a:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->P:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/aa;->b:Lcom/google/a/ao;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/k;->e:Ljava/util/List;

    return-void

    :cond_0
    new-instance v1, Lcom/google/a/q;

    invoke-direct {v1, p0}, Lcom/google/a/q;-><init>(Lcom/google/a/k;)V

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcom/google/a/o;

    invoke-direct {v1, p0}, Lcom/google/a/o;-><init>(Lcom/google/a/k;)V

    goto/16 :goto_1

    :cond_2
    new-instance v1, Lcom/google/a/p;

    invoke-direct {v1, p0}, Lcom/google/a/p;-><init>(Lcom/google/a/k;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/io/Writer;)Lcom/google/a/d/f;
    .locals 2

    iget-boolean v0, p0, Lcom/google/a/k;->i:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/a/d/f;

    invoke-direct {v0, p1}, Lcom/google/a/d/f;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/a/k;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/a/d/f;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/google/a/k;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/a/d/f;->d(Z)V

    return-object v0
.end method

.method private a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/a/d/a;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/google/a/d/a;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/an;->a(Lcom/google/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/google/a/d/a;->a(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/a/d/a;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/a/ah;

    invoke-direct {v1, v0}, Lcom/google/a/ah;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/a/d/a;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/a/ah;

    invoke-direct {v1, v0}, Lcom/google/a/ah;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/a/ah;

    invoke-direct {v1, v0}, Lcom/google/a/ah;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(Lcom/google/a/k;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/a/k;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(D)V
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialDoubleValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/f;)V
    .locals 5

    invoke-static {p2}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/a/d/f;->g()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {p3}, Lcom/google/a/d/f;->h()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/a/k;->h:Z

    invoke-virtual {p3, v3}, Lcom/google/a/d/f;->c(Z)V

    invoke-virtual {p3}, Lcom/google/a/d/f;->i()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/a/k;->g:Z

    invoke-virtual {p3, v4}, Lcom/google/a/d/f;->d(Z)V

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/google/a/an;->a(Lcom/google/a/d/f;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/google/a/d/f;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/google/a/d/f;->d(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/google/a/z;

    invoke-direct {v4, v0}, Lcom/google/a/z;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/google/a/d/f;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/google/a/d/f;->d(Z)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/a/c/a;)Lcom/google/a/an;
    .locals 4

    iget-object v0, p0, Lcom/google/a/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/an;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/s;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/a/s;

    invoke-direct {v2}, Lcom/google/a/s;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/google/a/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/ao;

    invoke-interface {v1, p0, p1}, Lcom/google/a/ao;->a(Lcom/google/a/k;Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v2, Lcom/google/a/s;->a:Lcom/google/a/an;

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    :cond_3
    :try_start_1
    iput-object v1, v2, Lcom/google/a/s;->a:Lcom/google/a/an;

    iget-object v2, p0, Lcom/google/a/k;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GSON cannot handle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/a/an;
    .locals 1

    invoke-static {p1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/a/y;
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/a/aa;->a:Lcom/google/a/aa;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/google/a/b/a/k;

    invoke-direct {v1}, Lcom/google/a/b/a/k;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/f;)V

    invoke-virtual {v1}, Lcom/google/a/b/a/k;->a()Lcom/google/a/y;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    invoke-static {p2}, Lcom/google/a/b/u;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1, v0}, Lcom/google/a/d/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lcom/google/a/k;->a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    move-result-object v1

    sget-object v2, Lcom/google/a/d/e;->j:Lcom/google/a/d/e;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/a/z;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/a/z;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/a/d/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/ah;

    invoke-direct {v1, v0}, Lcom/google/a/ah;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/a/z;

    invoke-direct {v1, v0}, Lcom/google/a/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/a/aa;->a:Lcom/google/a/aa;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v1}, Lcom/google/a/b/v;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/a/k;->a(Ljava/io/Writer;)Lcom/google/a/d/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/f;->g()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {v2}, Lcom/google/a/d/f;->h()Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/a/k;->h:Z

    invoke-virtual {v2, v5}, Lcom/google/a/d/f;->c(Z)V

    invoke-virtual {v2}, Lcom/google/a/d/f;->i()Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/a/k;->g:Z

    invoke-virtual {v2, v6}, Lcom/google/a/d/f;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v2}, Lcom/google/a/b/v;->a(Lcom/google/a/y;Lcom/google/a/d/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/google/a/d/f;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/google/a/d/f;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/a/z;

    invoke-direct {v1, v0}, Lcom/google/a/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/google/a/d/f;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/google/a/d/f;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-static {v1}, Lcom/google/a/b/v;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/a/k;->a(Ljava/io/Writer;)Lcom/google/a/d/f;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/google/a/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/f;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/a/z;

    invoke-direct {v1, v0}, Lcom/google/a/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/a/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/k;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/k;->f:Lcom/google/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
