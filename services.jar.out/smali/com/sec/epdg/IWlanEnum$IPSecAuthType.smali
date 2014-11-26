.class public final enum Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPSecAuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IPSecAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field public static final enum EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field public static final enum PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field public static final enum PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    const-string v1, "PRE_SHARED"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    const-string v1, "PUBLIC_KEY"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    const-string v1, "EAP"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    return-object v0
.end method
