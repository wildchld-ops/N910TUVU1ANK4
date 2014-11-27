.class public final Lcom/google/a/b/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/ao;


# instance fields
.field private final a:Lcom/google/a/b/f;

.field private final b:Lcom/google/a/j;

.field private final c:Lcom/google/a/b/o;


# direct methods
.method public constructor <init>(Lcom/google/a/b/f;Lcom/google/a/j;Lcom/google/a/b/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/r;->a:Lcom/google/a/b/f;

    iput-object p2, p0, Lcom/google/a/b/a/r;->b:Lcom/google/a/j;

    iput-object p3, p0, Lcom/google/a/b/a/r;->c:Lcom/google/a/b/o;

    return-void
.end method

.method private a(Lcom/google/a/k;Lcom/google/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 15

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v14, :cond_4

    aget-object v8, v13, v11

    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Lcom/google/a/b/a/r;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/a/b/a/r;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_3

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v1, Lcom/google/a/a/b;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/b;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/a/b/a/r;->b:Lcom/google/a/j;

    invoke-interface {v1, v8}, Lcom/google/a/j;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v2}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v7

    iget-object v1, v7, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/a/b/u;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v1, Lcom/google/a/b/a/s;

    move-object v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/a/b/a/s;-><init>(Lcom/google/a/b/a/r;Ljava/lang/String;ZZLcom/google/a/k;Lcom/google/a/c/a;Ljava/lang/reflect/Field;Z)V

    iget-object v2, v1, Lcom/google/a/b/a/u;->g:Ljava/lang/String;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/a/u;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/a/b/a/u;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {v1}, Lcom/google/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object p2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    move-object/from16 p3, v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v10

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/r;->c:Lcom/google/a/b/o;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/a/b/o;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/r;->c:Lcom/google/a/b/o;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b/o;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/a/k;Lcom/google/a/c/a;)Lcom/google/a/an;
    .locals 4

    iget-object v1, p2, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/r;->a:Lcom/google/a/b/f;

    invoke-virtual {v0, p2}, Lcom/google/a/b/f;->a(Lcom/google/a/c/a;)Lcom/google/a/b/t;

    move-result-object v2

    new-instance v0, Lcom/google/a/b/a/t;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/a/b/a/r;->a(Lcom/google/a/k;Lcom/google/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/google/a/b/a/t;-><init>(Lcom/google/a/b/a/r;Lcom/google/a/b/t;Ljava/util/Map;B)V

    goto :goto_0
.end method
