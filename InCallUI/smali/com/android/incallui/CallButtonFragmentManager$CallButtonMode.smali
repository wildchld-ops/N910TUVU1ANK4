.class final enum Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;
.super Ljava/lang/Enum;
.source "CallButtonFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum INVALID:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_DRIVING:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_EMPTY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_QCIF_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_QCIF_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_QCIF_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_QVGA_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_QVGA_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VOICE_COMMON:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VOICE_COMMON_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VOICE_COMMON_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VOICE_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VOICE_EASY_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

.field public static final enum IN_CALL_VOICE_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->INVALID:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VOICE_COMMON"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VOICE_COMMON_MULTI"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VOICE_COMMON_KEYPAD"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VOICE_EASY"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VOICE_EASY_KEYPAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VOICE_ONEHAND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_DRIVING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVING:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_DRIVE_LINK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_DRIVE_LINK_MULTI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VIDEO_EASY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_VIDEO_ONEHAND"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_QCIF_VIDEO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_QCIF_VIDEO_EASY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_QCIF_VIDEO_ONEHAND"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_QVGA_VIDEO"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_QVGA_VIDEO_EASY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_QVGA_VIDEO_ONEHAND"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_COVER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const-string v1, "IN_CALL_EMPTY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_EMPTY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->INVALID:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVING:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_EMPTY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->$VALUES:[Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;
    .locals 1

    const-class v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->$VALUES:[Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    return-object v0
.end method
