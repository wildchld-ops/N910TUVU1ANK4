.class public final enum Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;
.super Ljava/lang/Enum;
.source "SelloutSmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SelloutSmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelloutNetworkId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_AR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_AR_MOVISTAR:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_AR_PERSONAL:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_BR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_BR_OI:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_BR_TIM:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_BR_VIVO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

.field public static final enum SMS_SELLOUT_NETWORK_TEST_QC:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_TEST_QC"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_TEST_QC:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_BR_VIVO"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_VIVO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_BR_TIM"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_TIM:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_BR_CLARO"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_BR_OI"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_OI:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_AR_MOVISTAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_MOVISTAR:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_AR_CLARO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_AR_PERSONAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_PERSONAL:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const-string v1, "SMS_SELLOUT_NETWORK_MAX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v1, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_TEST_QC:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_VIVO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_TIM:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_OI:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_MOVISTAR:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_PERSONAL:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->$VALUES:[Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;
    .locals 1

    const-class v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->$VALUES:[Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    return-object v0
.end method
