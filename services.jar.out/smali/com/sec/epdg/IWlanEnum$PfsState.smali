.class public final enum Lcom/sec/epdg/IWlanEnum$PfsState;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PfsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$PfsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$PfsState;

.field public static final enum DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

.field public static final enum ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$PfsState;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$PfsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$PfsState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$PfsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$PfsState;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PfsState;->$VALUES:[Lcom/sec/epdg/IWlanEnum$PfsState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$PfsState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/sec/epdg/IWlanEnum$PfsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$PfsState;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$PfsState;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanEnum$PfsState;->$VALUES:[Lcom/sec/epdg/IWlanEnum$PfsState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$PfsState;

    return-object v0
.end method
