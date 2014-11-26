.class public final enum Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;
.super Ljava/lang/Enum;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/Configuration$Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SESSION_STARTING_POINT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

.field public static final enum OPEN_CHAT_VIEW:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

.field public static final enum SEND_MESSAGE:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

.field public static final enum START_TYPING:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    const-string v1, "OPEN_CHAT_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->OPEN_CHAT_VIEW:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    new-instance v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    const-string v1, "START_TYPING"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->START_TYPING:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    new-instance v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    const-string v1, "SEND_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->SEND_MESSAGE:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->OPEN_CHAT_VIEW:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->START_TYPING:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->SEND_MESSAGE:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->$VALUES:[Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->$VALUES:[Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    return-object v0
.end method
