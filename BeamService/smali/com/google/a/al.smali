.class public final Lcom/google/a/al;
.super Lcom/google/a/an;


# instance fields
.field private final a:Lcom/google/a/ag;

.field private final b:Lcom/google/a/x;

.field private final c:Lcom/google/a/k;

.field private final d:Lcom/google/a/c/a;

.field private final e:Lcom/google/a/ao;

.field private f:Lcom/google/a/an;


# direct methods
.method private constructor <init>(Lcom/google/a/ag;Lcom/google/a/x;Lcom/google/a/k;Lcom/google/a/c/a;Lcom/google/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/an;-><init>()V

    iput-object p1, p0, Lcom/google/a/al;->a:Lcom/google/a/ag;

    iput-object p2, p0, Lcom/google/a/al;->b:Lcom/google/a/x;

    iput-object p3, p0, Lcom/google/a/al;->c:Lcom/google/a/k;

    iput-object p4, p0, Lcom/google/a/al;->d:Lcom/google/a/c/a;

    iput-object p5, p0, Lcom/google/a/al;->e:Lcom/google/a/ao;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/ag;Lcom/google/a/x;Lcom/google/a/k;Lcom/google/a/c/a;Lcom/google/a/ao;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/a/al;-><init>(Lcom/google/a/ag;Lcom/google/a/x;Lcom/google/a/k;Lcom/google/a/c/a;Lcom/google/a/ao;)V

    return-void
.end method

.method private a()Lcom/google/a/an;
    .locals 4

    iget-object v0, p0, Lcom/google/a/al;->f:Lcom/google/a/an;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/a/b/q;->a:Lcom/google/a/b/q;

    iget-object v1, p0, Lcom/google/a/al;->c:Lcom/google/a/k;

    iget-object v2, p0, Lcom/google/a/al;->e:Lcom/google/a/ao;

    iget-object v3, p0, Lcom/google/a/al;->d:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/b/q;->a(Lcom/google/a/k;Lcom/google/a/ao;Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/al;->f:Lcom/google/a/an;

    goto :goto_0
.end method

.method public static a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/ao;
    .locals 2

    new-instance v0, Lcom/google/a/am;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/a/am;-><init>(Ljava/lang/Object;Lcom/google/a/c/a;B)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/a/al;->b:Lcom/google/a/x;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/al;->a()Lcom/google/a/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/an;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/b/v;->a(Lcom/google/a/d/a;)Lcom/google/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/y;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/a/al;->b:Lcom/google/a/x;

    iget-object v2, p0, Lcom/google/a/al;->d:Lcom/google/a/c/a;

    iget-object v2, v2, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/a/al;->c:Lcom/google/a/k;

    iget-object v3, v3, Lcom/google/a/k;->a:Lcom/google/a/w;

    invoke-interface {v1, v0, v2}, Lcom/google/a/x;->a(Lcom/google/a/y;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/f;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/al;->a:Lcom/google/a/ag;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/al;->a()Lcom/google/a/an;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/an;->a(Lcom/google/a/d/f;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/f;->f()Lcom/google/a/d/f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/a/al;->a:Lcom/google/a/ag;

    iget-object v1, p0, Lcom/google/a/al;->d:Lcom/google/a/c/a;

    iget-object v1, v1, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/a/al;->c:Lcom/google/a/k;

    iget-object v1, v1, Lcom/google/a/k;->b:Lcom/google/a/af;

    invoke-interface {v0, p2}, Lcom/google/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/y;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/v;->a(Lcom/google/a/y;Lcom/google/a/d/f;)V

    goto :goto_0
.end method
