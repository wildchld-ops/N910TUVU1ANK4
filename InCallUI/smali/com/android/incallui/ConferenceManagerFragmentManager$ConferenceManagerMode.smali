.class final enum Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;
.super Ljava/lang/Enum;
.source "ConferenceManagerFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceManagerFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConferenceManagerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

.field public static final enum CONFERENCE_MANAGER_COMMON:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

.field public static final enum INVALID:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->INVALID:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    new-instance v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    const-string v1, "CONFERENCE_MANAGER_COMMON"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->CONFERENCE_MANAGER_COMMON:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    sget-object v1, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->INVALID:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->CONFERENCE_MANAGER_COMMON:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->$VALUES:[Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;
    .locals 1

    const-class v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->$VALUES:[Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    return-object v0
.end method
