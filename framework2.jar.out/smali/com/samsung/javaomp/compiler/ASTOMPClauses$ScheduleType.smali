.class public final enum Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/javaomp/compiler/ASTOMPClauses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

.field public static final enum AUTO:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

.field public static final enum DYNAMIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

.field public static final enum GUIDED:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

.field public static final enum RUNTIME:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

.field public static final enum STATIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->STATIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    new-instance v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    const-string v1, "DYNAMIC"

    invoke-direct {v0, v1, v3}, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->DYNAMIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    new-instance v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    const-string v1, "GUIDED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->GUIDED:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    new-instance v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v5}, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->AUTO:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    new-instance v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    const-string v1, "RUNTIME"

    invoke-direct {v0, v1, v6}, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->RUNTIME:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    sget-object v1, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->STATIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->DYNAMIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->GUIDED:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->AUTO:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->RUNTIME:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->$VALUES:[Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;
    .locals 1

    const-class v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;
    .locals 1

    sget-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->$VALUES:[Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    return-object v0
.end method
