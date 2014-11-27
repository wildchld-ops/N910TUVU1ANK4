.class public final Lcom/google/a/b/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/ao;


# instance fields
.field private final a:Lcom/google/a/b/f;


# direct methods
.method public constructor <init>(Lcom/google/a/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/e;->a:Lcom/google/a/b/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/k;Lcom/google/a/c/a;)Lcom/google/a/an;
    .locals 6

    iget-object v0, p2, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v4

    iget-object v0, p0, Lcom/google/a/b/a/e;->a:Lcom/google/a/b/f;

    invoke-virtual {v0, p2}, Lcom/google/a/b/f;->a(Lcom/google/a/c/a;)Lcom/google/a/b/t;

    move-result-object v5

    new-instance v0, Lcom/google/a/b/a/f;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/a/f;-><init>(Lcom/google/a/b/a/e;Lcom/google/a/k;Ljava/lang/reflect/Type;Lcom/google/a/an;Lcom/google/a/b/t;)V

    goto :goto_0
.end method
