.class final enum Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EpdgServerIpResetReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

.field public static final enum RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

.field public static final enum RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

.field public static final enum WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const-string v1, "WIFI_DISCONNECT"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const-string v1, "RESET_ALL"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const-string v1, "RESET_CACHED_IP"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->$VALUES:[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->$VALUES:[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    return-object v0
.end method
