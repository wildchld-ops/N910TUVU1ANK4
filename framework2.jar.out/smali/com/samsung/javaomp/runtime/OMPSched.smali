.class public final enum Lcom/samsung/javaomp/runtime/OMPSched;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/javaomp/runtime/OMPSched;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/javaomp/runtime/OMPSched;

.field public static final enum AUTO:Lcom/samsung/javaomp/runtime/OMPSched;

.field public static final enum DYNAMIC:Lcom/samsung/javaomp/runtime/OMPSched;

.field public static final enum GUIDED:Lcom/samsung/javaomp/runtime/OMPSched;

.field public static final enum RUNTIME:Lcom/samsung/javaomp/runtime/OMPSched;

.field public static final enum STATIC:Lcom/samsung/javaomp/runtime/OMPSched;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPSched;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/runtime/OMPSched;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->STATIC:Lcom/samsung/javaomp/runtime/OMPSched;

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPSched;

    const-string v1, "DYNAMIC"

    invoke-direct {v0, v1, v3}, Lcom/samsung/javaomp/runtime/OMPSched;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->DYNAMIC:Lcom/samsung/javaomp/runtime/OMPSched;

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPSched;

    const-string v1, "GUIDED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/javaomp/runtime/OMPSched;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->GUIDED:Lcom/samsung/javaomp/runtime/OMPSched;

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPSched;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v5}, Lcom/samsung/javaomp/runtime/OMPSched;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->AUTO:Lcom/samsung/javaomp/runtime/OMPSched;

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPSched;

    const-string v1, "RUNTIME"

    invoke-direct {v0, v1, v6}, Lcom/samsung/javaomp/runtime/OMPSched;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->RUNTIME:Lcom/samsung/javaomp/runtime/OMPSched;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/javaomp/runtime/OMPSched;

    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->STATIC:Lcom/samsung/javaomp/runtime/OMPSched;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->DYNAMIC:Lcom/samsung/javaomp/runtime/OMPSched;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->GUIDED:Lcom/samsung/javaomp/runtime/OMPSched;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->AUTO:Lcom/samsung/javaomp/runtime/OMPSched;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->RUNTIME:Lcom/samsung/javaomp/runtime/OMPSched;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->$VALUES:[Lcom/samsung/javaomp/runtime/OMPSched;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/OMPSched;
    .locals 1

    const-class v0, Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/OMPSched;

    return-object v0
.end method

.method public static values()[Lcom/samsung/javaomp/runtime/OMPSched;
    .locals 1

    sget-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->$VALUES:[Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/javaomp/runtime/OMPSched;

    return-object v0
.end method
