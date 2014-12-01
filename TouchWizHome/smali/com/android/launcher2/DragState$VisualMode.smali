.class abstract enum Lcom/android/launcher2/DragState$VisualMode;
.super Ljava/lang/Enum;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "VisualMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/DragState$VisualMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/DragState$VisualMode;

.field public static final enum DELETE:Lcom/android/launcher2/DragState$VisualMode;

.field public static final enum HOVER:Lcom/android/launcher2/DragState$VisualMode;

.field public static final enum NORMAL:Lcom/android/launcher2/DragState$VisualMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/DragState$VisualMode$1;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DragState$VisualMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    new-instance v0, Lcom/android/launcher2/DragState$VisualMode$2;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/DragState$VisualMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/DragState$VisualMode;->DELETE:Lcom/android/launcher2/DragState$VisualMode;

    new-instance v0, Lcom/android/launcher2/DragState$VisualMode$3;

    const-string v1, "HOVER"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/DragState$VisualMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/DragState$VisualMode;

    sget-object v1, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/DragState$VisualMode;->DELETE:Lcom/android/launcher2/DragState$VisualMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/DragState$VisualMode;->$VALUES:[Lcom/android/launcher2/DragState$VisualMode;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/launcher2/DragState$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DragState$VisualMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/DragState$VisualMode;
    .locals 1

    const-class v0, Lcom/android/launcher2/DragState$VisualMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState$VisualMode;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/DragState$VisualMode;
    .locals 1

    sget-object v0, Lcom/android/launcher2/DragState$VisualMode;->$VALUES:[Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/DragState$VisualMode;

    return-object v0
.end method


# virtual methods
.method protected abstract enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V
.end method
