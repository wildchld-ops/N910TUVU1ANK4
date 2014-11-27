.class public final La/a/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:La/b/b;


# instance fields
.field private final b:Ljava/util/Random;

.field private final c:La/a/a/b/e;

.field private final d:Lcom/google/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/c;

    invoke-static {v0}, La/b/c;->a(Ljava/lang/Class;)La/b/b;

    move-result-object v0

    sput-object v0, La/a/a/a/c;->a:La/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, La/a/a/b/a;

    invoke-direct {v0}, La/a/a/b/a;-><init>()V

    new-instance v1, Lcom/google/a/k;

    invoke-direct {v1}, Lcom/google/a/k;-><init>()V

    invoke-direct {p0, v0, v1}, La/a/a/a/c;-><init>(La/a/a/b/e;Lcom/google/a/k;)V

    return-void
.end method

.method private constructor <init>(La/a/a/b/e;Lcom/google/a/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, La/a/a/a/c;->b:Ljava/util/Random;

    iput-object p1, p0, La/a/a/a/c;->c:La/a/a/b/e;

    iput-object p2, p0, La/a/a/a/c;->d:Lcom/google/a/k;

    return-void
.end method

.method public constructor <init>(Lcom/google/a/k;)V
    .locals 1

    new-instance v0, La/a/a/b/a;

    invoke-direct {v0}, La/a/a/b/a;-><init>()V

    invoke-direct {p0, v0, p1}, La/a/a/a/c;-><init>(La/a/a/b/e;Lcom/google/a/k;)V

    return-void
.end method

.method static synthetic a(La/a/a/a/c;Ljava/lang/String;La/a/a/a/b;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/a/c;->a(Ljava/lang/String;La/a/a/a/b;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;La/a/a/a/b;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/c;->b:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/a/ab;

    invoke-direct {v3}, Lcom/google/a/ab;-><init>()V

    const-string v4, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/a/ab;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "method"

    invoke-virtual {v3, v0, v2}, Lcom/google/a/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/a/v;

    invoke-direct {v2}, Lcom/google/a/v;-><init>()V

    if-eqz p4, :cond_0

    array-length v4, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_1

    :cond_0
    const-string v0, "params"

    invoke-virtual {v3, v0, v2}, Lcom/google/a/ab;->a(Ljava/lang/String;Lcom/google/a/y;)V

    invoke-virtual {v3}, Lcom/google/a/y;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, La/a/a/a/c;->a:La/b/b;

    const-string v3, "JSON-RPC >>  {}"

    invoke-interface {v2, v3, v0}, La/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p2, v0}, La/a/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-object v2, La/a/a/a/c;->a:La/b/b;

    const-string v3, "JSON-RPC <<  {}"

    invoke-interface {v2, v3, v0}, La/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/a/ad;

    invoke-direct {v2}, Lcom/google/a/ad;-><init>()V

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/a/ad;->a(Ljava/io/Reader;)Lcom/google/a/y;

    move-result-object v0

    check-cast v0, Lcom/google/a/ab;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/a/y;->j()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/google/a/y;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, La/a/a/b/d;

    invoke-virtual {v0}, Lcom/google/a/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/b/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-object v5, p4, v0

    iget-object v6, p0, La/a/a/a/c;->d:Lcom/google/a/k;

    invoke-virtual {v6, v5}, Lcom/google/a/k;->a(Ljava/lang/Object;)Lcom/google/a/y;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/a/v;->a(Lcom/google/a/y;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/b/b;

    const-string v2, "unable to get data from transport"

    invoke-direct {v1, v2, v0}, La/a/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Lcom/google/a/y;->h()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/google/a/y;->k()Lcom/google/a/ab;

    move-result-object v3

    const-string v0, "code"

    invoke-virtual {v3, v0}, Lcom/google/a/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "code"

    invoke-virtual {v3, v0}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/y;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const-string v2, "message"

    invoke-virtual {v3, v2}, Lcom/google/a/ab;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "message"

    invoke-virtual {v3, v2}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/y;->b()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lcom/google/a/ab;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "data"

    invoke-virtual {v3, v1}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v1

    instance-of v1, v1, Lcom/google/a/ab;

    if-eqz v1, :cond_6

    const-string v1, "data"

    invoke-virtual {v3, v1}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/y;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_3
    new-instance v3, La/a/a/b/d;

    invoke-direct {v3, v0, v2, v1}, La/a/a/b/d;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_2

    :cond_6
    const-string v1, "data"

    invoke-virtual {v3, v1}, Lcom/google/a/ab;->b(Ljava/lang/String;)Lcom/google/a/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/y;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    new-instance v1, La/a/a/b/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown error, data = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/a/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/b/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_9

    :goto_4
    return-object v1

    :cond_9
    iget-object v0, p0, La/a/a/a/c;->d:Lcom/google/a/k;

    invoke-virtual {v2}, Lcom/google/a/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4
.end method


# virtual methods
.method public final varargs a(La/a/a/a/b;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const-class v0, La/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, La/a/a/a/d;

    invoke-direct {v1, p0, p2, p1}, La/a/a/a/d;-><init>(La/a/a/a/c;Ljava/lang/String;La/a/a/a/b;)V

    invoke-static {v0, p3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, p3, v0

    iget-object v3, p0, La/a/a/a/c;->c:La/a/a/b/e;

    invoke-virtual {v3, v2}, La/a/a/b/e;->b(Ljava/lang/Class;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
