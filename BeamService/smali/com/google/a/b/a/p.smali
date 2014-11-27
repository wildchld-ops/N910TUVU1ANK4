.class final Lcom/google/a/b/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/ao;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/k;Lcom/google/a/c/a;)Lcom/google/a/an;
    .locals 2

    iget-object v0, p2, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/a/b/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/a/b/a/o;-><init>(Lcom/google/a/k;B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
