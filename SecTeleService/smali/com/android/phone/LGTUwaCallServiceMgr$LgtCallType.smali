.class final enum Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;
.super Ljava/lang/Enum;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LgtCallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

.field public static final enum VIDEO_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

.field public static final enum VIDEO_SHARE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

.field public static final enum VOICE_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    const-string v1, "VOICE_CALL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VOICE_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    new-instance v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    const-string v1, "VIDEO_SHARE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_SHARE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    new-instance v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    const-string v1, "VIDEO_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    sget-object v1, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VOICE_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_SHARE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->$VALUES:[Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;
    .locals 1

    const-class v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;
    .locals 1

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->$VALUES:[Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    invoke-virtual {v0}, [Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    return-object v0
.end method
