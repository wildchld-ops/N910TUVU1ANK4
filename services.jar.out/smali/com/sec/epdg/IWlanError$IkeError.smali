.class public final enum Lcom/sec/epdg/IWlanError$IkeError;
.super Ljava/lang/Enum;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanError$IkeError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum AUTHENTICATION_FAILED:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum CHILD_SA_NOT_FOUND:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum FAILED_CP_REQUIRED:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INTERNAL_ADDRESS_FAILURE:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_IKE_SPI:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_KE_PAYLOAD:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_MAJOR_VERSION:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_MESSAGE_ID:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_SELECTORS:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_SPI:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum INVALID_SYNTAX:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum NO_ADDITIONAL_SAS:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum NO_PROPOSAL_CHOSEN:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum SINGLE_PAIR_REQUIRED:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum TEMPORARY_FAILURE:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum TS_UNACCEPTABLE:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum UNKNOWN:Lcom/sec/epdg/IWlanError$IkeError;

.field public static final enum UNSUPPORTED_CRITICAL_PAYLOAD:Lcom/sec/epdg/IWlanError$IkeError;


# instance fields
.field private final ikeErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->UNKNOWN:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "UNSUPPORTED_CRITICAL_PAYLOAD"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->UNSUPPORTED_CRITICAL_PAYLOAD:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_IKE_SPI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_IKE_SPI:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_MAJOR_VERSION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_MAJOR_VERSION:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_SYNTAX"

    invoke-direct {v0, v1, v6, v8}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_SYNTAX:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_MESSAGE_ID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_MESSAGE_ID:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_SPI"

    const/4 v2, 0x6

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_SPI:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "NO_PROPOSAL_CHOSEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->NO_PROPOSAL_CHOSEN:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_KE_PAYLOAD"

    const/16 v2, 0x8

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_KE_PAYLOAD:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "AUTHENTICATION_FAILED"

    const/16 v2, 0x9

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->AUTHENTICATION_FAILED:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "SINGLE_PAIR_REQUIRED"

    const/16 v2, 0xa

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->SINGLE_PAIR_REQUIRED:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "NO_ADDITIONAL_SAS"

    const/16 v2, 0xb

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->NO_ADDITIONAL_SAS:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INTERNAL_ADDRESS_FAILURE"

    const/16 v2, 0xc

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INTERNAL_ADDRESS_FAILURE:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "FAILED_CP_REQUIRED"

    const/16 v2, 0xd

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->FAILED_CP_REQUIRED:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "TS_UNACCEPTABLE"

    const/16 v2, 0xe

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->TS_UNACCEPTABLE:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "INVALID_SELECTORS"

    const/16 v2, 0xf

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_SELECTORS:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "TEMPORARY_FAILURE"

    const/16 v2, 0x10

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->TEMPORARY_FAILURE:Lcom/sec/epdg/IWlanError$IkeError;

    new-instance v0, Lcom/sec/epdg/IWlanError$IkeError;

    const-string v1, "CHILD_SA_NOT_FOUND"

    const/16 v2, 0x11

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->CHILD_SA_NOT_FOUND:Lcom/sec/epdg/IWlanError$IkeError;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/sec/epdg/IWlanError$IkeError;

    sget-object v1, Lcom/sec/epdg/IWlanError$IkeError;->UNKNOWN:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/IWlanError$IkeError;->UNSUPPORTED_CRITICAL_PAYLOAD:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_IKE_SPI:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_MAJOR_VERSION:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_SYNTAX:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_MESSAGE_ID:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_SPI:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/epdg/IWlanError$IkeError;->NO_PROPOSAL_CHOSEN:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v1, v0, v8

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_KE_PAYLOAD:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->AUTHENTICATION_FAILED:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->SINGLE_PAIR_REQUIRED:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->NO_ADDITIONAL_SAS:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->INTERNAL_ADDRESS_FAILURE:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->FAILED_CP_REQUIRED:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->TS_UNACCEPTABLE:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->INVALID_SELECTORS:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->TEMPORARY_FAILURE:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/epdg/IWlanError$IkeError;->CHILD_SA_NOT_FOUND:Lcom/sec/epdg/IWlanError$IkeError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/IWlanError$IkeError;->$VALUES:[Lcom/sec/epdg/IWlanError$IkeError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/epdg/IWlanError$IkeError;->ikeErrorCode:I

    return-void
.end method

.method public static getIkeErrorFromCode(I)Lcom/sec/epdg/IWlanError$IkeError;
    .locals 5

    invoke-static {}, Lcom/sec/epdg/IWlanError$IkeError;->values()[Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanError$IkeError;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/IWlanError$IkeError;->UNKNOWN:Lcom/sec/epdg/IWlanError$IkeError;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanError$IkeError;
    .locals 1

    const-class v0, Lcom/sec/epdg/IWlanError$IkeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanError$IkeError;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanError$IkeError;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanError$IkeError;->$VALUES:[Lcom/sec/epdg/IWlanError$IkeError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanError$IkeError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanError$IkeError;->ikeErrorCode:I

    return v0
.end method
