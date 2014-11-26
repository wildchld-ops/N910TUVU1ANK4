.class public final enum Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;
.super Ljava/lang/Enum;
.source "SecondScreenIncomingHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field public static final enum ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field public static final enum AIRMOTION_SWEEP1:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field public static final enum AIRMOTION_SWEEP2:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field public static final enum DEACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field public static final enum NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field public static final enum TRIGGERED:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const-string v1, "DEACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->DEACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const-string v1, "TRIGGERED"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->TRIGGERED:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const-string v1, "AIRMOTION_SWEEP1"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const-string v1, "AIRMOTION_SWEEP2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->DEACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->TRIGGERED:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->$VALUES:[Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;
    .locals 1

    const-class v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;
    .locals 1

    sget-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->$VALUES:[Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    return-object v0
.end method
