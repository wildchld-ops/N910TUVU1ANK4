.class public final Lcom/google/a/b/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/b/f;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/google/a/b/t;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/google/a/b/h;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/h;-><init>(Lcom/google/a/b/f;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/a/c/a;)Lcom/google/a/b/t;
    .locals 3

    iget-object v2, p1, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p1, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/u;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/a/b/g;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/a/b/g;-><init>(Lcom/google/a/b/f;Lcom/google/a/u;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/a/b/f;->a(Ljava/lang/Class;)Lcom/google/a/b/t;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/a/b/i;

    invoke-direct {v0, p0}, Lcom/google/a/b/i;-><init>(Lcom/google/a/b/f;)V

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/b/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/b/n;-><init>(Lcom/google/a/b/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/a/b/j;

    invoke-direct {v0, p0}, Lcom/google/a/b/j;-><init>(Lcom/google/a/b/f;)V

    goto :goto_1

    :cond_3
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/a/b/k;

    invoke-direct {v0, p0}, Lcom/google/a/b/k;-><init>(Lcom/google/a/b/f;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/a/b/l;

    invoke-direct {v0, p0}, Lcom/google/a/b/l;-><init>(Lcom/google/a/b/f;)V

    goto :goto_1

    :cond_5
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/a/b/m;

    invoke-direct {v0, p0}, Lcom/google/a/b/m;-><init>(Lcom/google/a/b/f;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
