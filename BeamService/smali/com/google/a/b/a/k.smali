.class public final Lcom/google/a/b/a/k;
.super Lcom/google/a/d/f;


# static fields
.field private static final c:Ljava/io/Writer;

.field private static final d:Lcom/google/a/ae;


# instance fields
.field private final e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/a/b/a/l;

    invoke-direct {v0}, Lcom/google/a/b/a/l;-><init>()V

    sput-object v0, Lcom/google/a/b/a/k;->c:Ljava/io/Writer;

    new-instance v0, Lcom/google/a/ae;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/a/ae;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/a/k;->d:Lcom/google/a/ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/a/b/a/k;->c:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/a/d/f;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    sget-object v0, Lcom/google/a/aa;->a:Lcom/google/a/aa;

    iput-object v0, p0, Lcom/google/a/b/a/k;->g:Lcom/google/a/y;

    return-void
.end method

.method private a(Lcom/google/a/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/a/y;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/a/d/f;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/a/k;->j()Lcom/google/a/y;

    move-result-object v0

    check-cast v0, Lcom/google/a/ab;

    iget-object v1, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/a/ab;->a(Ljava/lang/String;Lcom/google/a/y;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/a/b/a/k;->g:Lcom/google/a/y;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/a/b/a/k;->j()Lcom/google/a/y;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/v;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/a/v;

    invoke-virtual {v0, p1}, Lcom/google/a/v;->a(Lcom/google/a/y;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private j()Lcom/google/a/y;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/y;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/a/d/f;
    .locals 2

    new-instance v0, Lcom/google/a/ae;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/ae;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/google/a/d/f;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/a/k;->f()Lcom/google/a/d/f;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/a/d/f;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/a/ae;

    invoke-direct {v0, p1}, Lcom/google/a/ae;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/a/d/f;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/a/k;->j()Lcom/google/a/y;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/ab;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(Z)Lcom/google/a/d/f;
    .locals 2

    new-instance v0, Lcom/google/a/ae;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/ae;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    return-object p0
.end method

.method public final a()Lcom/google/a/y;
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one JSON element but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/k;->g:Lcom/google/a/y;

    return-object v0
.end method

.method public final b()Lcom/google/a/d/f;
    .locals 2

    new-instance v0, Lcom/google/a/v;

    invoke-direct {v0}, Lcom/google/a/v;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    iget-object v1, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/a/d/f;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/a/k;->f()Lcom/google/a/d/f;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/ae;

    invoke-direct {v0, p1}, Lcom/google/a/ae;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    goto :goto_0
.end method

.method public final c()Lcom/google/a/d/f;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/a/k;->j()Lcom/google/a/y;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    sget-object v1, Lcom/google/a/b/a/k;->d:Lcom/google/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Lcom/google/a/d/f;
    .locals 2

    new-instance v0, Lcom/google/a/ab;

    invoke-direct {v0}, Lcom/google/a/ab;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    iget-object v1, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final e()Lcom/google/a/d/f;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/a/k;->j()Lcom/google/a/y;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/ab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/b/a/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final f()Lcom/google/a/d/f;
    .locals 1

    sget-object v0, Lcom/google/a/aa;->a:Lcom/google/a/aa;

    invoke-direct {p0, v0}, Lcom/google/a/b/a/k;->a(Lcom/google/a/y;)V

    return-object p0
.end method
