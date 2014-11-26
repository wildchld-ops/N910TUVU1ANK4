.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum CSONLY_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum CSONLY_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum CSPREPERRED_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum CSPREPERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum IWLANONLY:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum IWLANPREFERRED_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum IWLANPREFERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "IWLANONLY"

    const-string v2, "IWLAN"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANONLY:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "IWLANPREFERRED_GSM"

    const-string v2, "IWLAN:LTE"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANPREFERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "IWLANPREFERRED_CDMA"

    const-string v2, "IWLAN:LTE:EHRPD"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANPREFERRED_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "CSPREPERRED_GSM"

    const-string v2, "LTE:IWLAN"

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSPREPERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "CSPREPERRED_CDMA"

    const-string v2, "LTE:EHRPD:IWLAN"

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSPREPERRED_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "CSONLY_GSM"

    const/4 v2, 0x5

    const-string v3, "LTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSONLY_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "CSONLY_CDMA"

    const/4 v2, 0x6

    const-string v3, "LTE:EHRPD"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSONLY_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANONLY:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANPREFERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANPREFERRED_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSPREPERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSPREPERRED_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSONLY_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSONLY_CDMA:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->$VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->mText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .locals 1

    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->$VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->mText:Ljava/lang/String;

    return-object v0
.end method
