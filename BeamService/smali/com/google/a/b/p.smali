.class final Lcom/google/a/b/p;
.super Lcom/google/a/an;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/a/k;

.field final synthetic d:Lcom/google/a/c/a;

.field final synthetic e:Lcom/google/a/b/o;

.field private f:Lcom/google/a/an;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;ZZLcom/google/a/k;Lcom/google/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/p;->e:Lcom/google/a/b/o;

    iput-boolean p2, p0, Lcom/google/a/b/p;->a:Z

    iput-boolean p3, p0, Lcom/google/a/b/p;->b:Z

    iput-object p4, p0, Lcom/google/a/b/p;->c:Lcom/google/a/k;

    iput-object p5, p0, Lcom/google/a/b/p;->d:Lcom/google/a/c/a;

    invoke-direct {p0}, Lcom/google/a/an;-><init>()V

    return-void
.end method

.method private a()Lcom/google/a/an;
    .locals 4

    iget-object v0, p0, Lcom/google/a/b/p;->f:Lcom/google/a/an;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/a/b/q;->a:Lcom/google/a/b/q;

    iget-object v1, p0, Lcom/google/a/b/p;->c:Lcom/google/a/k;

    iget-object v2, p0, Lcom/google/a/b/p;->e:Lcom/google/a/b/o;

    iget-object v3, p0, Lcom/google/a/b/p;->d:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/b/q;->a(Lcom/google/a/k;Lcom/google/a/ao;Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/p;->f:Lcom/google/a/an;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/b/p;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/a;->n()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/p;->a()Lcom/google/a/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/an;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/f;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/b/p;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/f;->f()Lcom/google/a/d/f;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/p;->a()Lcom/google/a/an;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/an;->a(Lcom/google/a/d/f;Ljava/lang/Object;)V

    goto :goto_0
.end method
