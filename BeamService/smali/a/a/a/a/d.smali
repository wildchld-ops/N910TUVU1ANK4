.class final La/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:La/a/a/a/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:La/a/a/a/b;


# direct methods
.method constructor <init>(La/a/a/a/c;Ljava/lang/String;La/a/a/a/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/d;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/d;->b:Ljava/lang/String;

    iput-object p3, p0, La/a/a/a/d;->c:La/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La/a/a/a/d;->a:La/a/a/a/c;

    iget-object v1, p0, La/a/a/a/d;->b:Ljava/lang/String;

    iget-object v2, p0, La/a/a/a/d;->c:La/a/a/a/b;

    invoke-static {v0, v1, v2, p2, p3}, La/a/a/a/c;->a(La/a/a/a/c;Ljava/lang/String;La/a/a/a/b;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
