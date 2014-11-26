.class final enum Lcom/android/incallui/DialpadFragmentManager$DialpadMode;
.super Ljava/lang/Enum;
.source "DialpadFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/DialpadFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DialpadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/DialpadFragmentManager$DialpadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

.field public static final enum DIALPAD_COMMON:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

.field public static final enum DIALPAD_EASY:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

.field public static final enum DIALPAD_ONEHAND:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

.field public static final enum INVALID:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->INVALID:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    new-instance v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    const-string v1, "DIALPAD_COMMON"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_COMMON:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    new-instance v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    const-string v1, "DIALPAD_EASY"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_EASY:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    new-instance v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    const-string v1, "DIALPAD_ONEHAND"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_ONEHAND:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    sget-object v1, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->INVALID:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_COMMON:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_EASY:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_ONEHAND:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->$VALUES:[Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/DialpadFragmentManager$DialpadMode;
    .locals 1

    const-class v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/DialpadFragmentManager$DialpadMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->$VALUES:[Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    return-object v0
.end method
