.class public final enum Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualAdapterConfigurationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field public static final enum VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field public static final enum VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field public static final enum VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field public static final enum VIRTUAL_ADAPTER_CONF_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    const-string v1, "VIRTUAL_ADAPTER_CONF_INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    const-string v1, "VIRTUAL_ADAPTER_CONF_NONE"

    invoke-direct {v0, v1, v3}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    const-string v1, "VIRTUAL_ADAPTER_CONF_TUN"

    invoke-direct {v0, v1, v4}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    const-string v1, "VIRTUAL_ADAPTER_CONF_NONE_TUN"

    invoke-direct {v0, v1, v5}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->$VALUES:[Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->$VALUES:[Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    return-object v0
.end method
