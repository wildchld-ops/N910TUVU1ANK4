.class public final enum Lcom/ipsec/client/IPsecConnection$TunnelMode;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TunnelMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$TunnelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$TunnelMode;

.field public static final enum IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

.field public static final enum L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;

    const-string v1, "IPSEC_RAC"

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$TunnelMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;

    const-string v1, "L2TP_OVER_IPSEC"

    invoke-direct {v0, v1, v3}, Lcom/ipsec/client/IPsecConnection$TunnelMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$TunnelMode;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ipsec/client/IPsecConnection$TunnelMode;->L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->$VALUES:[Lcom/ipsec/client/IPsecConnection$TunnelMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$TunnelMode;
    .locals 1

    const-class v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$TunnelMode;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->$VALUES:[Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$TunnelMode;

    return-object v0
.end method
