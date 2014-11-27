.class public abstract enum Lcom/google/a/ai;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/a/ai;

.field public static final enum b:Lcom/google/a/ai;

.field private static final synthetic c:[Lcom/google/a/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/a/aj;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/a/aj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/ai;->a:Lcom/google/a/ai;

    new-instance v0, Lcom/google/a/ak;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/a/ak;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/ai;->b:Lcom/google/a/ai;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/ai;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/ai;->a:Lcom/google/a/ai;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/ai;->b:Lcom/google/a/ai;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/ai;->c:[Lcom/google/a/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/ai;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/ai;
    .locals 1

    const-class v0, Lcom/google/a/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    return-object v0
.end method

.method public static values()[Lcom/google/a/ai;
    .locals 1

    sget-object v0, Lcom/google/a/ai;->c:[Lcom/google/a/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/ai;

    return-object v0
.end method
