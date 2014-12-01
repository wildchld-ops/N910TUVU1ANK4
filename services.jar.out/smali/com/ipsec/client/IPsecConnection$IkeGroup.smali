.class public final enum Lcom/ipsec/client/IPsecConnection$IkeGroup;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IkeGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

.field public static final enum IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_768"

    invoke-direct {v0, v1, v3}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_1024"

    invoke-direct {v0, v1, v4}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_1536"

    invoke-direct {v0, v1, v5}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_2048"

    invoke-direct {v0, v1, v6}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_3072"

    invoke-direct {v0, v1, v7}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_4096"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_6144"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_8192"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_ECP_256"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_ECP_384"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_ECP_521"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_1024_160"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_2048_224"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_MODP_2048_256"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_ECP_192"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_ECP_224"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_ANY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_SUITE_B_GCM_128"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const-string v1, "IKE_GROUP_SUITE_B_GCM_256"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IkeGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IkeGroup;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->$VALUES:[Lcom/ipsec/client/IPsecConnection$IkeGroup;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .locals 1

    const-class v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->$VALUES:[Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IkeGroup;

    return-object v0
.end method
