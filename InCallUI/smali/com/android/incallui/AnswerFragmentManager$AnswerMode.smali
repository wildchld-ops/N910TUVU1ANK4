.class final enum Lcom/android/incallui/AnswerFragmentManager$AnswerMode;
.super Ljava/lang/Enum;
.source "AnswerFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnswerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/AnswerFragmentManager$AnswerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum ANSWER_COVER:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum DRIVE_LINK:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum DRIVE_LINK_MW:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum INVALID:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum VIDEO_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum VOICE_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum VOICE_EASY:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum VOLTE_SHOW_HIDE:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum VT_CMCC_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

.field public static final enum VT_THREE_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->INVALID:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "VOICE_COMMON"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "VOICE_EASY"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_EASY:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "DRIVE_LINK"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "DRIVE_LINK_MW"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK_MW:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "VT_THREE_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_THREE_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "VT_CMCC_BUTTON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_CMCC_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "ANSWER_COVER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->ANSWER_COVER:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "VIDEO_COMMON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VIDEO_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const-string v1, "VOLTE_SHOW_HIDE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOLTE_SHOW_HIDE:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    sget-object v1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->INVALID:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_EASY:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK_MW:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_THREE_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_CMCC_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->ANSWER_COVER:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VIDEO_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOLTE_SHOW_HIDE:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->$VALUES:[Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/AnswerFragmentManager$AnswerMode;
    .locals 1

    const-class v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/AnswerFragmentManager$AnswerMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->$VALUES:[Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    return-object v0
.end method
