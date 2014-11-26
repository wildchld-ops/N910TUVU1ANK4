.class final Lcom/touchtype_fluency/util/g;
.super Lcom/touchtype_fluency/util/h;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/touchtype_fluency/util/g$1;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/g$1;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/g;->a:Ljava/util/Map;

    new-instance v0, Lcom/touchtype_fluency/util/g$2;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/g$2;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/g;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/touchtype_fluency/util/i;

    sget-object v1, Lcom/touchtype_fluency/util/g;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/i;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/touchtype_fluency/util/h;-><init>(Lcom/touchtype_fluency/util/i;Ljava/util/Map;I)V

    return-void
.end method

.method static a()Lcom/touchtype_fluency/util/g;
    .locals 2

    new-instance v0, Lcom/touchtype_fluency/util/g;

    sget-object v1, Lcom/touchtype_fluency/util/g;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/g;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
