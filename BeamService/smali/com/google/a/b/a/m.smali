.class public final Lcom/google/a/b/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/ao;


# instance fields
.field final a:Z

.field private final b:Lcom/google/a/b/f;


# direct methods
.method public constructor <init>(Lcom/google/a/b/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/m;->b:Lcom/google/a/b/f;

    iput-boolean p2, p0, Lcom/google/a/b/a/m;->a:Z

    return-void
.end method

.method static a(Lcom/google/a/an;Ljava/lang/Object;)Lcom/google/a/y;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/a/b/a/k;

    invoke-direct {v0}, Lcom/google/a/b/a/k;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/a/d/f;->b(Z)V

    invoke-virtual {p0, v0, p1}, Lcom/google/a/an;->a(Lcom/google/a/d/f;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/a/b/a/k;->a()Lcom/google/a/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/z;

    invoke-direct {v1, v0}, Lcom/google/a/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/a/k;Lcom/google/a/c/a;)Lcom/google/a/an;
    .locals 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/google/a/b/a/aa;->f:Lcom/google/a/an;

    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v6

    iget-object v0, p0, Lcom/google/a/b/a/m;->b:Lcom/google/a/b/f;

    invoke-virtual {v0, p2}, Lcom/google/a/b/f;->a(Lcom/google/a/c/a;)Lcom/google/a/b/t;

    move-result-object v7

    new-instance v0, Lcom/google/a/b/a/n;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/a/b/a/n;-><init>(Lcom/google/a/b/a/m;Lcom/google/a/k;Ljava/lang/reflect/Type;Lcom/google/a/an;Ljava/lang/reflect/Type;Lcom/google/a/an;Lcom/google/a/b/t;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v4

    goto :goto_1
.end method
