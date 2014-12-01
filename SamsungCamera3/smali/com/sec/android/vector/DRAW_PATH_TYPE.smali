.class public final enum Lcom/sec/android/vector/DRAW_PATH_TYPE;
.super Ljava/lang/Enum;
.source "DRAW_PATH_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/vector/DRAW_PATH_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

.field public static final enum cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

.field public static final enum lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

.field public static final enum moveTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;

    const-string v1, "moveTo"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/vector/DRAW_PATH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;->moveTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    new-instance v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;

    const-string v1, "lineTo"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/vector/DRAW_PATH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    new-instance v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;

    const-string v1, "cubicTo"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/vector/DRAW_PATH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;->cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/vector/DRAW_PATH_TYPE;

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->moveTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;->$VALUES:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/vector/DRAW_PATH_TYPE;
    .locals 1

    const-class v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/vector/DRAW_PATH_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/vector/DRAW_PATH_TYPE;->$VALUES:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/vector/DRAW_PATH_TYPE;

    return-object v0
.end method
