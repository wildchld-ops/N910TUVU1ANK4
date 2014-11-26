.class public final enum Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
.super Ljava/lang/Enum;
.source "SurfaceWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceWidgetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->$VALUES:[Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1

    sget-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->$VALUES:[Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method
