.class final enum Lcom/sec/epdg/EpdgService$DnsRetryReason;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DnsRetryReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$DnsRetryReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$DnsRetryReason;

.field public static final enum DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

.field public static final enum MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

.field public static final enum SCREEN_ON_INTENT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

.field public static final enum TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

.field public static final enum WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    const-string v1, "WIFI_RECONNECT"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    const-string v1, "TEPDG_TIMER_EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/EpdgService$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    const-string v1, "SCREEN_ON_INTENT"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/EpdgService$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    const-string v1, "DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/EpdgService$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    new-instance v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    const-string v1, "MAPCON_CHANGE"

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/EpdgService$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$DnsRetryReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->$VALUES:[Lcom/sec/epdg/EpdgService$DnsRetryReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .locals 1

    const-class v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService$DnsRetryReason;->$VALUES:[Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$DnsRetryReason;

    return-object v0
.end method
