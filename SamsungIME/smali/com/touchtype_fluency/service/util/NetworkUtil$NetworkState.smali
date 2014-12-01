.class public final enum Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
.super Ljava/lang/Enum;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/service/util/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

.field public static final enum ETHERNET:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

.field public static final enum IMPLIED:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

.field public static final enum MOBILE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

.field public static final enum NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

.field public static final enum OTHER:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

.field public static final enum WIFI:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    new-instance v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const-string v1, "IMPLIED"

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->IMPLIED:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    new-instance v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5}, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->WIFI:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    new-instance v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v6}, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->MOBILE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    new-instance v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const-string v1, "ETHERNET"

    invoke-direct {v0, v1, v7}, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->ETHERNET:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    new-instance v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->OTHER:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->IMPLIED:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->WIFI:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->MOBILE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->ETHERNET:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->OTHER:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->$VALUES:[Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    .locals 1

    const-class v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->$VALUES:[Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    return-object v0
.end method
