.class final Lcom/google/a/b/a/an;
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

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/a/k;->a(Ljava/lang/Class;)Lcom/google/a/an;

    move-result-object v1

    new-instance v0, Lcom/google/a/b/a/ao;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/a/ao;-><init>(Lcom/google/a/b/a/an;Lcom/google/a/an;)V

    goto :goto_0
.end method
