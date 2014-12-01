.class public final enum Lcom/sec/epdg/IWlanEnum$IkeEncryption;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeEncryption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IkeEncryption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_3DES_CBC"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CBC_128"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CBC_192"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CBC_256"

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CTR_128"

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CTR_192"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CTR_256"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_GCM_128"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_GCM_192"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_GCM_256"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_BASIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_ANY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IkeEncryption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .locals 1

    const-class v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    return-object v0
.end method
