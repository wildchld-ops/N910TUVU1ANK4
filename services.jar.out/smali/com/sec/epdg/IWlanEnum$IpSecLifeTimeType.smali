.class public final enum Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecLifeTimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field public static final enum IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field public static final enum IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    const-string v1, "IPSEC_LIFE_TYPE_SECONDS"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    const-string v1, "IPSEC_LIFE_TYPE_KILOBYTES"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    const-class v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method
