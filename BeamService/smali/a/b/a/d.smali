.class public final La/b/a/d;
.super La/b/a/b;


# static fields
.field public static final a:La/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/a/d;

    invoke-direct {v0}, La/b/a/d;-><init>()V

    sput-object v0, La/b/a/d;->a:La/b/a/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NOP"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
