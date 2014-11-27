.class public final Lcom/google/a/t;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/a/b/o;

.field public b:Lcom/google/a/ai;

.field public c:Lcom/google/a/j;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/a/b/o;->a:Lcom/google/a/b/o;

    iput-object v0, p0, Lcom/google/a/t;->a:Lcom/google/a/b/o;

    sget-object v0, Lcom/google/a/ai;->a:Lcom/google/a/ai;

    iput-object v0, p0, Lcom/google/a/t;->b:Lcom/google/a/ai;

    sget-object v0, Lcom/google/a/d;->a:Lcom/google/a/d;

    iput-object v0, p0, Lcom/google/a/t;->c:Lcom/google/a/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/t;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/t;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/t;->f:Ljava/util/List;

    iput v1, p0, Lcom/google/a/t;->i:I

    iput v1, p0, Lcom/google/a/t;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/t;->m:Z

    return-void
.end method
