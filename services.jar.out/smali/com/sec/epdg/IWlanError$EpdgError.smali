.class public final enum Lcom/sec/epdg/IWlanError$EpdgError;
.super Ljava/lang/Enum;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanError$EpdgError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "VENDOR_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "IKE_NEGOTIATION_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "DNS_RESOLUTION_FAILED_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "TIMEOUT_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "CERTIFICATION_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->$VALUES:[Lcom/sec/epdg/IWlanError$EpdgError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanError$EpdgError;
    .locals 1

    const-class v0, Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanError$EpdgError;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanError$EpdgError;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanError$EpdgError;->$VALUES:[Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanError$EpdgError;

    return-object v0
.end method
