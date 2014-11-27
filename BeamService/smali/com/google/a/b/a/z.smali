.class final Lcom/google/a/b/a/z;
.super Lcom/google/a/an;


# instance fields
.field private final a:Lcom/google/a/k;

.field private final b:Lcom/google/a/an;

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/a/k;Lcom/google/a/an;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/an;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/z;->a:Lcom/google/a/k;

    iput-object p2, p0, Lcom/google/a/b/a/z;->b:Lcom/google/a/an;

    iput-object p3, p0, Lcom/google/a/b/a/z;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/a/z;->b:Lcom/google/a/an;

    invoke-virtual {v0, p1}, Lcom/google/a/an;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/d/f;Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/google/a/b/a/z;->b:Lcom/google/a/an;

    iget-object v0, p0, Lcom/google/a/b/a/z;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/a/b/a/z;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/google/a/b/a/z;->a:Lcom/google/a/k;

    invoke-static {v0}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/an;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/b/a/t;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/a/b/a/z;->b:Lcom/google/a/an;

    instance-of v1, v1, Lcom/google/a/b/a/t;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/z;->b:Lcom/google/a/an;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/a/an;->a(Lcom/google/a/d/f;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
