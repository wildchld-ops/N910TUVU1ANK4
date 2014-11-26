.class final enum Lcom/android/incallui/CallCardFragmentManager$CallCardMode;
.super Ljava/lang/Enum;
.source "CallCardFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallCardMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/CallCardFragmentManager$CallCardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum DRIVE_LINK:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum DRIVE_LINK_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum EASY_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum EMPTY:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum INVALID:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum QCIF_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum VOICE_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum VOICE_COMMON_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

.field public static final enum VOICE_MULTISIM:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->INVALID:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "VOICE_COMMON"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "VOICE_COMMON_MULTI"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "VOICE_MULTISIM"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_MULTISIM:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "QCIF_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QCIF_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "QVGA_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "DRIVE_LINK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "DRIVE_LINK_MULTI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "CALLCARD_COVER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "EASY_COMMON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EASY_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const-string v1, "EMPTY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EMPTY:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->INVALID:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_MULTISIM:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QCIF_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EASY_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EMPTY:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->$VALUES:[Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/CallCardFragmentManager$CallCardMode;
    .locals 1

    const-class v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/CallCardFragmentManager$CallCardMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->$VALUES:[Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    return-object v0
.end method
