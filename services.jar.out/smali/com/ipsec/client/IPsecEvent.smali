.class public final enum Lcom/ipsec/client/IPsecEvent;
.super Ljava/lang/Enum;
.source "IPsecEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CANCELLING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CREATING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_NONE:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_NOT_READY:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_PREPARING:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_READY:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_NONE"

    invoke-direct {v0, v1, v3}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_NONE:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_NOT_READY"

    invoke-direct {v0, v1, v4}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_NOT_READY:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_PREPARING"

    invoke-direct {v0, v1, v5}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PREPARING:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_READY"

    invoke-direct {v0, v1, v6}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_READY:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CREATING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CREATING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_DISCONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTION_ACTIVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_PEER_DISCONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_DISCONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CANCELLING_CONNECTION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CANCELLING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTION_SETUP_FAILURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTION_RESET"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_MISSING_DATA"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_UNKNOWN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;

    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_ERROR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ipsec/client/IPsecEvent;

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_NONE:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_NOT_READY:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PREPARING:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_READY:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CREATING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CANCELLING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipsec/client/IPsecEvent;->$VALUES:[Lcom/ipsec/client/IPsecEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecEvent;
    .locals 1

    const-class v0, Lcom/ipsec/client/IPsecEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecEvent;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecEvent;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecEvent;->$VALUES:[Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecEvent;

    return-object v0
.end method
