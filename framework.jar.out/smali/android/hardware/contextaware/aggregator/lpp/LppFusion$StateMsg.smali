.class final enum Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;
.super Ljava/lang/Enum;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_BATCH_LIST_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_NOT_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_PASS_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_PASS_IN_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum LOCATION_REQUEST:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum START:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

.field public static final enum STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_REQUEST"

    invoke-direct {v0, v1, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_FOUND"

    invoke-direct {v0, v1, v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_BATCH_LIST_FOUND"

    invoke-direct {v0, v1, v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_BATCH_FOUND"

    invoke-direct {v0, v1, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_PASS_FOUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_PASS_IN_BATCH_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "LOCATION_NOT_FOUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const-string v1, "STOP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->$VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

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

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->$VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-object v0
.end method
