.class public final enum Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPsecEncryption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IPsecEncryption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
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

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_3DES_CBC"

    invoke-direct {v0, v1, v3}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_128"

    invoke-direct {v0, v1, v4}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_192"

    invoke-direct {v0, v1, v5}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_256"

    invoke-direct {v0, v1, v6}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_128"

    invoke-direct {v0, v1, v7}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_192"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_256"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_128"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_192"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_256"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_BASIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_ANY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->$VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->$VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    return-object v0
.end method
