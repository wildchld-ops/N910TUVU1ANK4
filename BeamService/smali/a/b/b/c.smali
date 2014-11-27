.class public final La/b/b/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:La/b/b/c;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:La/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/b/c;

    invoke-direct {v0}, La/b/b/c;-><init>()V

    sput-object v0, La/b/b/c;->b:La/b/b/c;

    const-string v0, "1.6"

    sput-object v0, La/b/b/c;->a:Ljava/lang/String;

    const-class v0, La/b/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/b/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/b/b;

    invoke-direct {v0}, La/b/b/b;-><init>()V

    iput-object v0, p0, La/b/b/c;->d:La/b/a;

    return-void
.end method

.method public static final a()La/b/b/c;
    .locals 1

    sget-object v0, La/b/b/c;->b:La/b/b/c;

    return-object v0
.end method


# virtual methods
.method public final b()La/b/a;
    .locals 1

    iget-object v0, p0, La/b/b/c;->d:La/b/a;

    return-object v0
.end method
